module.exports = (sequelize, Sequelize) => {
    const Roles = sequelize.define('AdminCategory', {
        id: {
            field: 'AdminCategory_ID',
            autoIncrement: true,
            type: Sequelize.INTEGER,
            primaryKey: true
        },
        AdminCategory_Name: {
            type: Sequelize.STRING(100),
            allowNull: true,
            comment: 'admin category name'
        },
        Display_Order: {
            type: Sequelize.INTEGER,
            allowNull: false,
            comment: 'Display Order'
        },
        AdminCategory_Icon: {
            type: Sequelize.STRING(100),
            allowNull: false,
            comment: 'Admin Category Icon'
        },
        CreatedBy: {
            type: Sequelize.STRING(100),
            allowNull: true,
            comment: 'Created By'
        },
        ModifiedBy: {
            type: Sequelize.STRING(100),
            allowNull: true,
            comment: 'Modified By'
        },
        IsActive: {
            type: Sequelize.BOOLEAN,
            allowNull: false,
            defaultValue: 1,
            comment: 'Is Active'
        }
    }, {
        tableName: 'admin_category',
        comment: 'role privileges info',
        createdAt: 'Created_Date',
        updatedAt: 'Modified_Date',
        charset: 'utf8',
        collate: 'utf8_general_ci'
    });
    return Roles;
};