fs = require('fs')
vm = require('vm')

scalajs = {}
sandbox = (path, context) ->
	buffer = fs.readFileSync(path)
	vm.runInNewContext(buffer, context, path)

sandbox(__dirname + '/scala-2.10/scala-js-node-example-extdeps.js', scalajs)
sandbox(__dirname + '/scala-2.10/scala-js-node-example.js', scalajs)

module.exports = scalajs.ScalaJS.modules.example_Example()
