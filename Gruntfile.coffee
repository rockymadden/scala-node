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
		shell: sbt: command: 'sbt packageJS'

	grunt.loadNpmTasks('grunt-contrib-coffee')
	grunt.loadNpmTasks('grunt-mocha-cov')
	grunt.loadNpmTasks('grunt-shell')

	grunt.registerTask('default', ['coffee', 'shell:sbt'])
	grunt.registerTask('test', ['default', 'mochacov:test'])
	grunt.registerTask('travis', ['test'])
