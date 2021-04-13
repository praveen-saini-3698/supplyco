module.exports = (sequelize, Sequelize) => {
    const Permissions = sequelize.define('Permissions', {
        id: {
            field: 'id',
            autoIncrement: true,
            type: Sequelize.INTEGER,
            primaryKey: true
        },
        permission: {
            type: Sequelize.STRING(255),
            allowNull: false,
            comment: 'permission',
        },
        status: {
            type: Sequelize.BOOLEAN,
            allowNull: false,
            defaultValue: 1,
            comment: 'status',
        }
    }, {
        tableName: 'permissions',
        comment: 'permission base info',
        createdAt: 'created_at',
        updatedAt: 'updated_at',
        charset: 'utf8',
        collate: 'utf8_general_ci',
    });
    return Permissions;
};