example = require('./example')
should = require('should')

describe('example', ->
	describe('helloWorld()', ->
		it('should return "Hello World!"', ->
			example.Example().helloWorld().should.be.equal('Hello World!')
		)
	)
)
