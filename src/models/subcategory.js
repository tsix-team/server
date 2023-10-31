'use strict';
const {
  Model
} = require('sequelize');
//const category = require('./category');
module.exports = (sequelize, DataTypes) => {
  class Subcategorie extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
    }
  }
  Subcategorie.init({
    id_subcate:{
      type: DataTypes.INTEGER, 
      primaryKey: true, 
      autoIncrement: true,
    },
    name_subcate: DataTypes.STRING,
    slug: DataTypes.STRING,
    id_cate: DataTypes.INTEGER,
  }, {
    sequelize,
    modelName: 'Subcategorie',
  });
  return Subcategorie;
};