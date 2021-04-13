module.exports = (sequelize, Sequelize) => {
    const ServiceCategory = sequelize.define('ServiceCategory', {
        id: {
            field: 'id',
            autoIncrement: true,
            type: Sequelize.INTEGER,
            primaryKey: true
        },
        category: {
            type: Sequelize.STRING(255),
            allowNull: false,
            comment: 'category',
        },
        parent_category_id: {
            type: Sequelize.INTEGER,
            allowNull: false,
            comment: 'last name',
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
        tableName: 'service_category',
        comment: 'service category info',
        createdAt: 'created_at',
        updatedAt: 'updated_at',
        charset: 'utf8',
        collate: 'utf8_general_ci',
    });
    return ServiceCategory;
};