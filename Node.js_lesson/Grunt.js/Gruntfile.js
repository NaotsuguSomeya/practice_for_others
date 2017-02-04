module.exports = function(grunt) {
  // configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    less: {
      build1: {
        src: ['src/style01.less','src/style02.less'],
        dest: 'build/style.css'
      }
    },
    csslint: {
      check: {
        // src: 'build/style.css'
        src: '<%= less.build1.dest %>'
      }
    },
    cssmin: {
      minimize:{
        // 2014-12-24   v0.11.0   Bump clean-css to 3.0.1. Remove banner option.
        // options: {
        //   banner: '/*! <%= pkg.name %> <%= grunt.template.today("yyyy-mm-dd") %> */'
        // },
        files: {
          'build/styles.min.css': '<%= less.build1.dest %>'
        }
      }
    },
    watch: {
      files: 'src/*.less',
      tasks: ['less', 'csslint', 'cssmin'],
      options: {
        livereload: true // 自動ブラウザリロード->htmlで「livereload.js」を読み込む
      }
    },
    connect: {
      server: {
        options: {
          port: 8888,
          hostname: 'localhost'
        }
      }
    }
  });

  // Load the plugin.
  grunt.loadNpmTasks('grunt-contrib-less');
  grunt.loadNpmTasks('grunt-contrib-csslint');
  grunt.loadNpmTasks('grunt-contrib-cssmin');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-connect');

  // Default task(s).
  grunt.registerTask('default', ['less', 'csslint', 'cssmin', 'connect','watch']); // 順序考慮！
  grunt.registerTask('task1', ['less:build1']);
  grunt.registerTask('task2', ['less:build2']);
  grunt.registerTask('task3', ['less:build3']);

};
