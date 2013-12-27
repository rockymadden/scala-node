example = require('./example')
should = require('should')

describe('example', ->
	describe('helloWorld()', ->
		it('should return "Hello World!"', ->
			example.helloWorld().should.be.equal('Hello World!')
		)
	)
)
