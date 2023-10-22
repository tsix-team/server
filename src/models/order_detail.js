'use strict';
const {
  Model
} = require('sequelize');
// import {Categorie} from './category'
// import {Subcategorie} from './subcategory'
module.exports = (sequelize, DataTypes) => {
  class Order_detail extends Model {
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
  Order_detail.init({
    id_order: DataTypes.INTEGER,
    id_pd: DataTypes.INTEGER,
    quantity: DataTypes.INTEGER,
    total_amount: DataTypes.DOUBLE
  }, {
    sequelize,
    modelName: 'Order_detail',
  });
  return Order_detail;
};