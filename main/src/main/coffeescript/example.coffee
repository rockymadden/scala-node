fs = require('fs')
vm = require('vm')

scala = {}
sandbox = (path, context) ->
	buffer = fs.readFileSync(path)
	vm.runInNewContext(buffer, context, path)

sandbox(__dirname + '/main/target/scala-2.11/scala-node-main-opt.js', scala)

module.exports = scala
