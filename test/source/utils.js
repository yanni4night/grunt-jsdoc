/**
  * Copyright (C) 2014 yanni4night.com
  * utils.js
  *
  * changelog
  * 2014-08-14[09:40:20]:authorized
  *
  * @author yanni4night@gmail.com
  * @version 0.1.0
  * @since 0.1.0
  */


var Utils = {
    /**
     * Get the inner html
     *
     * @class Utils
     * @param  {HTMLElement} ele
     * @return {String}
     * @since 1.2
     */
    html:function (ele) {
        return ele.innerHTML;
    },
    /**
     * Get a HTMLElement by id
     *
     * @class Utils
     * @param  {String} id ID
     * @return {HTMLElement|null}
     * @since 1.2
     */
    get:function(id){
        return document.getElementById(id);
    }
};