// grunt -v (verbose output)
/*global module:false*/
module.exports = function(grunt) {
	// Project configuration.
	grunt.initConfig({
		// Metadata.
		pkg: grunt.file.readJSON('package.json'),
		datetime: Date.now(),
		// uglify: {
		// 	options: {
		// 		mangle: {
		// 			toplevel: true
		// 		},
		// 		squeeze: {
		// 			dead_code: false
		// 		},
		// 		codegen: {
		// 			quote_keys: true
		// 		}
		// 	},
		// 	'weddings': {
		// 		src: 'app/assets/javascripts/custom.js',
		// 		dest: 'build/testfileoutput.min.js'
		// 	}
		// },
		//cssmin: {
		//'weddings': {
		//files: {
		//'build/cssoutput.min.css': ['src/css/file1.css', 'src/css/file2.css']
		//}
		//}
		//},
		'check-gems': {
			test: {
				files: [{
					src: ['./']
				}]
			}
		}
	});
	//grunt.loadNpmTasks('grunt-contrib-uglify');
	//grunt.loadNpmTasks('grunt-contrib-cssmin'); 'cssmin' in tasks
	grunt.loadNpmTasks('grunt-check-gems');
	// Default task. //:weddings
	grunt.registerTask('default', ['check-gems']);
};
