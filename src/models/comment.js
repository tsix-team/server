'use strict';
const {
  Model
} = require('sequelize');
// import {Categorie} from './category'
// import {Subcategorie} from './subcategory'
module.exports = (sequelize, DataTypes) => {
  class Comment extends Model {
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
  Comment.init({
    id_cmt: {
      type: DataTypes.INTEGER, 
      primaryKey: true, 
      autoIncrement: true, 
    },
    id_user: DataTypes.STRING,
    id_pd: DataTypes.INTEGER,
    content: DataTypes.TEXT,
  }, {
    sequelize,
    modelName: 'Comment',
  });
  return Comment;
};