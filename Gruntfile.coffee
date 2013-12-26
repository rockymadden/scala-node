module.exports = (grunt) ->
	grunt.initConfig
		pkg: grunt.file.readJSON 'package.json'
		coffee:
			core: files: [{
				expand: true
				cwd: 'src/main/coffeescript/'
				src: ['**/*.coffee']
				dest: 'target/'
				ext: '.js'
			}]
			test: files: [{
				expand: true
				cwd: 'src/test/coffeescript/'
				src: ['**/*.coffee']
				dest: 'target/'
				ext: '.js'
			}]
		mochacov:
			options:
				files: ['target/**/*-test.js']
				require: ['should']
			test: options: reporter: 'spec'
		shell:
			sbtOptimizeJS:
				command: 'sbt optimizeJS'
				options: stdout: true
			sbtPackageJS:
				command: 'sbt packageJS'
				options: stdout: true
			sbtTest:
				command: 'sbt test'
				options:
					failOnError: true
					stdout: true

	grunt.loadNpmTasks('grunt-contrib-coffee')
	grunt.loadNpmTasks('grunt-mocha-cov')
	grunt.loadNpmTasks('grunt-shell')

	grunt.registerTask('default', ['shell:sbtPackageJS', 'coffee'])
	grunt.registerTask('test', ['default', 'shell:sbtTest', 'mochacov:test'])
	grunt.registerTask('travis', ['test'])
