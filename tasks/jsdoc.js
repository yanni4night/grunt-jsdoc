/*
 * grunt-jsdoc
 * https://github.com/yanni4night/grunt-jsdoc
 *
 * Copyright (c) 2014 yinyong
 * Licensed under the MIT license.
 */

'use strict';

//var jsdoc = require('../../jsdoc/index'); //todo
var jsdoc = require('yjsdoc');
var swig = require('swig');
var path = require('path');
var fs = require('fs');

module.exports = function(grunt) {

  // Please see the Grunt documentation for more information regarding task
  // creation: http://gruntjs.com/creating-tasks

  grunt.registerMultiTask('jsdoc', 'Grunt plugin for generating doc from javascript source files', function() {
    // Merge task-specific and/or target-specific options with these defaults.
    var options = this.options({
      destDir: '.',
      title: ''
    });

    if ('string' !== typeof options.destDir || !options.destDir instanceof String) {
      throw new Error('destDir has to be a string');
    }
    if (fs.existsSync(options.destDir) && !fs.statSync(options.destDir).isDirectory()) {
      throw new Error('destDir has to a directory');
    }

    // Iterate over all specified file groups.
    this.files.forEach(function(f) {
      // Concat specified files.
      var contents = f.src.filter(function(filepath) {
        // Warn on and remove invalid source files (if nonull was set).
        if (!grunt.file.exists(filepath)) {
          grunt.log.warn('Source file "' + filepath + '" not found.');
          return false;
        } else if (!/\.js$/i.test(filepath)) {
          grunt.log.warn('Source file "' + filepath + '" is not a javascript file.');
          return false;
        } else {
          return true;
        }
      }).map(function(filepath, idx) {
        return grunt.file.read(filepath);
      });


      var docs = jsdoc(contents);
      var functionsKey = 'functions';

      if (docs.classes[functionsKey]) {
        functionsKey += (Math.random() * 1e6) | 0;
      }

      docs.classes[functionsKey] = {
        _methods: docs.methods
      };

      var keys = Object.keys(docs.classes);

      keys.forEach(function(key) {
        grunt.file.write(path.join(options.destDir, key + '.html'), swig.renderFile(path.join(__dirname, '../', 'tpl/class.tpl'), {
          name: key,
          obj: docs.classes[key]
        }));
        grunt.log.writeln('Doc "' + key + '.html" created.');
      }); //render classes complete


      grunt.file.write(path.join(options.destDir, 'index.html'), swig.renderFile(path.join(__dirname, '../', 'tpl/index.tpl'), {
        list: keys,
        title: options.title,
        functions: functionsKey
      }));

    }); //files foreach
  });
};