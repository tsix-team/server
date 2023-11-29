'use strict';
const {
  Model
} = require('sequelize');
import db from '../models';
module.exports = (sequelize, DataTypes) => {
  class Categorie extends Model {

    static associate(db) {
      Categorie.hasMany(db.Subcategorie, { foreignKey: 'id_cate' });
    }
  }
  Categorie.init({
    id_cate: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
    },
    name_cate: DataTypes.STRING,
    slug: DataTypes.STRING,
  }, {
    sequelize,
    modelName: 'Categorie',
  })
  return Categorie
};