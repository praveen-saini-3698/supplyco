module.exports = (sequelize, Sequelize) => {
    const PermissionAssignment = sequelize.define('PermissionAssignment', {
        id: {
            field: 'id',
            autoIncrement: true,
            type: Sequelize.INTEGER,
            primaryKey: true
        },
        role_id: {
            type: Sequelize.INTEGER,
            allowNull: false,
            comment: 'role id',
        },
        can_create: {
            type: Sequelize.BOOLEAN,
            allowNull: false,
            comment: 'can create permission'
        },
        can_read: {
            type: Sequelize.BOOLEAN,
            allowNull: false,
            comment: 'can read permission'
        },
        can_update: {
            type: Sequelize.BOOLEAN,
            allowNull: false,
            comment: 'can update permission'
        },
        can_delete: {
            type: Sequelize.BOOLEAN,
            allowNull: false,
            comment: 'can delete permission'
        },
        created_by: {
            type: Sequelize.STRING(100),
            allowNull: true,
            comment: 'created by',
        },
        updated_by: {
            type: Sequelize.STRING(100),
            allowNull: true,
            comment: 'updated by',
        },
        status: {
            type: Sequelize.BOOLEAN,
            allowNull: false,
            defaultValue: 1,
            comment: 'status',
        }
    }, {
        tableName: 'permission_assignment',
        comment: 'permission assignment info',
        createdAt: 'created_at',
        updatedAt: 'updated_at',
        charset: 'utf8',
        collate: 'utf8_general_ci',
    });
    return PermissionAssignment;
};