'use strict';
const {
  Model
} = require('sequelize');
// import {Categorie} from './category'
// import {Subcategorie} from './subcategory'
module.exports = (sequelize, DataTypes) => {
  class Order extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
      //Product.belongsTo(Subcategorie, { foreignKey: 'id_subcate' });
      //Product.belongsTo(Categorie, { foreignKey: 'id_cate' });
    }
  }
  Order.init({
    id_order: {
      type: DataTypes.INTEGER, 
      primaryKey: true, 
      autoIncrement: true, 
    },
    status: DataTypes.STRING,
    payment: DataTypes.STRING,
    total_amount: DataTypes.INTEGER,
    id_user: DataTypes.STRING,
    note: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'Order',
  });
  return Order;
};