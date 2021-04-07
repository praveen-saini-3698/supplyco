module.exports = (sequelize, Sequelize) => {
    const User = sequelize.define('User', {
        id: {
            field: 'User_ID',
            autoIncrement: true,
            type: Sequelize.INTEGER,
            primaryKey: true
        },
        UserName: {
            type: Sequelize.STRING(100),
            allowNull: true,
            comment: 'user name',
        },
        ContactNumber: {
            type: Sequelize.STRING(100),
            allowNull: true,
            comment: 'Contact Number',
        },
        Email: {
            type: Sequelize.STRING(100),
            allowNull: true,
            comment: 'Email',
        },
        Role_ID: {
            type: Sequelize.INTEGER(100),
            allowNull: true,
            comment: 'Role ID',
        },
        CreatedBy: {
            type: Sequelize.STRING(100),
            allowNull: true,
            comment: 'Created By',
        },
        ModifiedBy: {
            type: Sequelize.STRING(100),
            allowNull: true,
            comment: 'Modified By',
        },
        IsActive: {
            type: Sequelize.BOOLEAN,
            allowNull: false,
            defaultValue: 1,
            comment: 'Is Active',
        }
    }, {
        tableName: 'user',
        comment: 'user base info',
        indexes: [
            {
                unique: false,
                fields: ['Role_ID']
            }
        ],
        createdAt: 'Created_Date',
        updatedAt: 'Modified_Date',
        charset: 'utf8',
        collate: 'utf8_general_ci',
    });
    return User;
};