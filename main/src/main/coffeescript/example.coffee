fs = require('fs')
vm = require('vm')

scala = {}
sandbox = (path, context) ->
	buffer = fs.readFileSync(path)
	vm.runInNewContext(buffer, context, path)

sandbox(__dirname + '/main/target/scala-2.10/scala-node-main-extdeps.js', scala)
sandbox(__dirname + '/main/target/scala-2.10/scala-node-main.js', scala)

module.exports = scala.ScalaJS.modules.example_Example()
