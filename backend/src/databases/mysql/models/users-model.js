'use strict'

const { Model, Op } = require('sequelize');
const securityUtils = require('../../../utils/security-utils');
const models = require('../index').models;

module.exports = (Types, sequelize) => {
    class Users extends Model {
        static async exists(username, email) {
            const isUserExists = await Users.findOne({
                where: {
                    [Op.or]: [
                        {
                            username: username
                        },
                        {
                            email: email
                        }
                    ]
                }
            });

            return (isUserExists) ? true : false;
        }

        static async fetchByUsername(username) {
            const fetchedUser = await Users.findOne({
                where: {
                    username: username,
                }
            });

            return fetchedUser;
        }
    }

    Users.init(
        {
            id: {
                type: Types.INTEGER,
                allowNull: false,
                autoIncrement: true,
                primaryKey: true,
            },

            email: {
                type: Types.TEXT,
                validate: {
                    isEmail: true,
                },
                allowNull: false,
            },

            username: {
                type: Types.STRING(40),
                allowNull: false,
            },

            password: {
                type: Types.TEXT,
                allowNull: false,
            },

            role: {
                type: Types.STRING(10),
                defaultValue: "user",
            }
        },
        {
            sequelize,
            createdAt: false,
            updatedAt: false,
        }
    );

    Users.addHook('beforeCreate', async (user) => {
        if (user.password) {
            user.password = await securityUtils.hashStr(user.password);
        }
    })

    return Users;
}