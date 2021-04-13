module.exports = (sequelize, Sequelize) => {
    const ServiceMaster = sequelize.define('ServiceMaster', {
        id: {
            field: 'id',
            autoIncrement: true,
            type: Sequelize.INTEGER,
            primaryKey: true
        },
        category_id: {
            type: Sequelize.INTEGER,
            allowNull: false,
            comment: 'category id',
        },
        service: {
            type: Sequelize.STRING(255),
            allowNull: false,
            comment: 'service name',
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
        tableName: 'service_master',
        comment: 'service master info',
        createdAt: 'created_at',
        updatedAt: 'updated_at',
        charset: 'utf8',
        collate: 'utf8_general_ci',
    });
    return ServiceMaster;
};