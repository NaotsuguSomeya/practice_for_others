module.exports = function(grunt) {

  // configuration.
  grunt.initConfig({
    // pkg: grunt.file.readJSON('package.json'),
    less: {
      build1: {
        src: 'src/style01.less',
        dest: 'build/style01.css',
        options: {
          compress: true
        }
      },
			build2: {
        src: 'src/style02.less',
        dest: 'build/style02.css'
      },
			build3: {
        files: {
          // 'build/style01.css' : 'src/style01.less'
          // 'build/style.css' : ['src/style01.less','src/style02.less']
          'build/style.css' : 'src/*.less'
        }
      }
    }
  });

  // Load the plugin.
  grunt.loadNpmTasks('grunt-contrib-less');

  // Default task(s).
  grunt.registerTask('default', ['less']);
  grunt.registerTask('task1', ['less:build1']);
  grunt.registerTask('task2', ['less:build2']);
  grunt.registerTask('task3', ['less:build3']);

};
