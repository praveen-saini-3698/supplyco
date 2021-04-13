module.exports = (sequelize, Sequelize) => {
    const UserCategoryMapping = sequelize.define('UserCategoryMapping', {
        id: {
            field: 'id',
            autoIncrement: true,
            type: Sequelize.INTEGER,
            primaryKey: true
        },
        user_id: {
            type: Sequelize.INTEGER,
            allowNull: false,
            comment: 'user id',
        },
        user_category_id: {
            type: Sequelize.INTEGER,
            allowNull: false,
            comment: 'user category id',
        },
        status: {
            type: Sequelize.BOOLEAN,
            allowNull: false,
            defaultValue: 1,
            comment: 'status',
        }
    }, {
        tableName: 'user_category_mapping',
        comment: 'user category mapping info',
        createdAt: 'created_at',
        updatedAt: 'updated_at',
        charset: 'utf8',
        collate: 'utf8_general_ci',
    });
    return UserCategoryMapping;
};