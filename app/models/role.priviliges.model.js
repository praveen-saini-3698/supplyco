module.exports = (sequelize, Sequelize) => {
    const Roles = sequelize.define('RolePriviliges', {
        id: {
            field: 'Role_Privileges_ID',
            autoIncrement: true,
            type: Sequelize.INTEGER,
            primaryKey: true
        },
        Role_ID: {
            type: Sequelize.INTEGER,
            allowNull: true,
            comment: 'role id',
        },
        Admin_Page_ID: {
            type: Sequelize.INTEGER,
            allowNull: true,
            comment: 'admin page id',
        },
        Is_View_Enabled: {
            type: Sequelize.BOOLEAN,
            allowNull: false,
            comment: 'Is View Enabled',
        },
        Is_Edit_Enabled: {
            type: Sequelize.BOOLEAN,
            allowNull: false,
            comment: 'Is Edit Enabled',
        },
        Is_Delete_Enabled: {
            type: Sequelize.BOOLEAN,
            allowNull: false,
            comment: 'Is Delete Enabled',
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
        tableName: 'role_privileges',
        comment: 'role privileges info',
        createdAt: 'Created_Date',
        updatedAt: 'Modified_Date',
        charset: 'utf8',
        collate: 'utf8_general_ci',
    });
    return Roles;
};