/**
  * Copyright (C) 2014 yanni4night.com
  * Animal.js
  *
  * changelog
  * 2014-08-13[13:16:07]:authorized
  *
  * @author yanni4night@gmail.com
  * @version 0.1.0
  * @since 0.1.0
  */


/**
 * Animal is the super class of all animals.
 *
 * @class
 * @since 1.0
 */
function Animal () {
}


Animal.prototype = {
  /**
   * [version description]
   * @class Animal
   * @type {Number}
   */
  version:0,
  /**
   * [num description]
   * 
   * @type {Number}
   * @since 1.0
   * @class Animal
   */
  num:3.34e+5,
  /**
   * Animal eat.
   *
   * @class  Animal
   * @param  {Object} food The foot to be eat.
   * @return {Boolean}
   * @throws {Error} If cannot eat
   * @throws {IOError} If nothing to eat
   */
  eat:function(food){

    return false;
  },
  /**
   * The poop description.
   *
   * @class Animal
   * @param  {String} where
   * @return {Object}
   */
  poop:function(where){
    return {};
  }
};

/**
 * See
 * @since  1.0
 * @param {Integer} far The distance
 * @return {String}
 * @throws {Error} If [this condition is met]
 */
function see(far){}

/**
 * Live
 * @since 1.1
 * @return {Integer}
 */
var live = function(){};
