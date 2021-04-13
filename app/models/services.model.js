module.exports = (sequelize, Sequelize) => {
    const Services = sequelize.define('Services', {
        id: {
            field: 'id',
            autoIncrement: true,
            type: Sequelize.INTEGER,
            primaryKey: true
        },
        service_id: {
            type: Sequelize.INTEGER,
            allowNull: false,
            comment: 'service id',
        },
        vendor_id: {
            type: Sequelize.INTEGER,
            allowNull: false,
            comment: 'vendor id',
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
        tableName: 'services',
        comment: 'user base info',
        createdAt: 'created_at',
        updatedAt: 'updated_at',
        charset: 'utf8',
        collate: 'utf8_general_ci',
    });
    return Services;
};