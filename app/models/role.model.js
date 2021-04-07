module.exports = (sequelize, Sequelize) => {
  const Roles = sequelize.define('Roles', {
    id: {
      field: 'Role_ID',
      autoIncrement: true,
      type: Sequelize.INTEGER,
      primaryKey: true
    },
    RoleName: {
      type: Sequelize.STRING(100),
      allowNull: true,
      comment: 'user name',
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
    tableName: 'role',
    comment: 'role base info',
    createdAt: 'Created_Date',
    updatedAt: 'Modified_Date',
    charset: 'utf8',
    collate: 'utf8_general_ci',
  });
  return Roles;
};