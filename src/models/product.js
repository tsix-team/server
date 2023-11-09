'use strict';
const {
  Model
} = require('sequelize');
// import {Categorie} from './category'
// import {Subcategorie} from './subcategory'
module.exports = (sequelize, DataTypes) => {
  class Product extends Model {
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
  Product.init({
    id_pd: {
      type: DataTypes.INTEGER, 
      primaryKey: true, 
      autoIncrement: true, 
    },
    name_pd: DataTypes.STRING,
    image: DataTypes.STRING,
    id_subcate: DataTypes.INTEGER, 
    price: DataTypes.DOUBLE,
    material: DataTypes.STRING,
    size: DataTypes.STRING,
    brand: DataTypes.STRING,
    description: DataTypes.TEXT,
    inventory: DataTypes.INTEGER,
    slug: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'Product',
  });
  return Product;
};