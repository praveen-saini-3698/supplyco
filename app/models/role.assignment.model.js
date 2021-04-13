module.exports = (sequelize, Sequelize) => {
    const RoleAssignment = sequelize.define('RoleAssignment', {
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
        user_id: {
            type: Sequelize.INTEGER,
            allowNull: false,
            comment: 'user id',
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
        tableName: 'role_assignment',
        comment: 'role assignment base info',
        createdAt: 'created_at',
        updatedAt: 'updated_at',
        charset: 'utf8',
        collate: 'utf8_general_ci',
    });
    return RoleAssignment;
};