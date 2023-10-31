'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('Products', {
      id_pd: {
        type: Sequelize.INTEGER.UNSIGNED,
        primaryKey: true,
        autoIncrement: true,
        allowNull: false,
      },
      id_cate: {
        type: Sequelize.INTEGER,
        allowNull: true,
        defaultValue: 0
      },
      id_subcate: {
        type: Sequelize.INTEGER,
        allowNull: true,
        defaultValue: 0
      },
      name_pd: {
        type: Sequelize.STRING,
        allowNull: false, 
      },
      image: {
        type: Sequelize.STRING,
        allowNull: false, 
      },
      price: {
        type: Sequelize.DOUBLE(8, 2),
        allowNull: false,
      },
      material: {
        type: Sequelize.STRING,
        allowNull: true,
      },
      size: {
        type: Sequelize.STRING,
        allowNull: true,
      },
      brand: {
        type: Sequelize.INTEGER,
        allowNull: true,
      },
      description: {
        type: Sequelize.TEXT,
        allowNull: true,
      },
      inventory: {
        type: Sequelize.INTEGER,
        allowNull: false,
        defaultValue: 1
      },
      slug: {
        type: Sequelize.STRING,
        allowNull: false,
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });
  },
  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('Products');
  }
};