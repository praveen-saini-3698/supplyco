module.exports = (sequelize, Sequelize) => {
    const Roles = sequelize.define('Roles', {
        id: {
            field: 'id',
            autoIncrement: true,
            type: Sequelize.INTEGER,
            primaryKey: true
        },
        role: {
            type: Sequelize.STRING(255),
            allowNull: false,
            comment: 'role id',
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
        tableName: 'roles',
        comment: 'role base info',
        createdAt: 'created_at',
        updatedAt: 'updated_at',
        charset: 'utf8',
        collate: 'utf8_general_ci',
    });
    return Roles;
};