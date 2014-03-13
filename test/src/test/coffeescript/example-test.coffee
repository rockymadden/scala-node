example = require('./example')
should = require('should')

describe('example', ->
	describe('helloWorld()', ->
		it('should return "Hello World!"', ->
			example.helloWorld__().should.be.equal('Hello World!')
		)
	)
)
