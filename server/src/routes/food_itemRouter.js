const express = require('express');
const food_itemModel = require('../models/food_itemModel');

const food_itemRouter = express.Router();

food_itemRouter.post('/food_item', async function (req, res) {
  try {
    const data = {
      item_id: req.body.item_id,        
      item_name: req.body.item_name,
      price: req.body.price,
      description: req.body.description,
      item_image: req.body.item_image,
    };

    const savedData = await food_itemModel(data).save();
    console.log(savedData);
    
    if (savedData) {
      return res.status(200).json({
        success: true,
        error: false,
        details: savedData,
        message: "Registration completed"
      });
    }
  } catch (error) {
    return res.status(400).json({
      success: false,
      error: true,
      message: "Something went wrong"
    });
  }
});

module.exports = food_itemRouter;