fs = require('fs')
vm = require('vm')

scala = {}
sandbox = (path, context) ->
	buffer = fs.readFileSync(path)
	vm.runInNewContext(buffer, context, path)

sandbox(__dirname + '/scala-2.10/scala-node-example-extdeps.js', scala)
sandbox(__dirname + '/scala-2.10/scala-node-example.js', scala)

module.exports = scala.ScalaJS.modules.example_Example()
