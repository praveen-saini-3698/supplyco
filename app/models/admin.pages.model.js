module.exports = (sequelize, Sequelize) => {
    const Roles = sequelize.define('AdminPages', {
        id: {
            field: 'Admin_Pages_ID',
            autoIncrement: true,
            type: Sequelize.INTEGER,
            primaryKey: true
        },
        AdminCategory_ID: {
            type: Sequelize.INTEGER,
            allowNull: true,
            comment: 'admin category id',
        },
        Admin_Pages_Name: {
            type: Sequelize.STRING(100),
            allowNull: false,
            comment: 'Admin Pages Name',
        },
        Admin_Pages_URL: {
            type: Sequelize.STRING(100),
            allowNull: false,
            comment: 'Admin Pages URL',
        },
        Display_Order: {
            type: Sequelize.INTEGER,
            allowNull: false,
            comment: 'Display Order',
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
        tableName: 'admin_pages',
        comment: 'role privileges info',
        createdAt: 'Created_Date',
        updatedAt: 'Modified_Date',
        charset: 'utf8',
        collate: 'utf8_general_ci',
    });
    return Roles;
};