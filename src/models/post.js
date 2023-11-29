'use strict';
const {
  Model
} = require('sequelize');
// import {Categorie} from './category'
// import {Subcategorie} from './subcategory'
module.exports = (sequelize, DataTypes) => {
  class Post extends Model {
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
  Post.init({
    id_post: {
      type: DataTypes.INTEGER, 
      primaryKey: true, 
      autoIncrement: true, 
    },
    title: DataTypes.STRING,
    id_user: DataTypes.STRING,
    image: DataTypes.STRING,
    content: DataTypes.TEXT, 
    slug: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'Post',
  });
  return Post;
};