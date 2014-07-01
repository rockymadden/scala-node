#scala-node [![Build Status](https://travis-ci.org/rockymadden/scala-node.png?branch=master)](http://travis-ci.org/rockymadden/scala-node)

Proof of concept to determine if [Scala.js](https://github.com/scala-js/scala-js) could be leveraged to make a [Node.js](https://github.com/joyent/node) module. It can.

__With this structure:__
* You can use Scala test frameworks (e.g. specs2) to test your Scala codebase prior to JavaScript compilation.
* You can use JavaScript test frameworks (e.g. mocha) to test your JavaScript codebase. This includes your scala.js compiled code.

## How-to

__Install node.js dependencies:__
```
npm install
```
---

__Build:__
```
grunt make
```
Runs ```sbt main/fullOptJS```, then performs all grunt default tasks (e.g. compile CoffeeScript).

---

__Test:__
```
grunt test
```
Runs all build items above, runs ```sbt test/test```, and finally runs Mocha based tests.

---

__Publish to NPM:__
```
npm publish
```
Runs build items above prior.

---

## License
```
The MIT License (MIT)

Copyright (c) 2013 Rocky Madden (http://rockymadden.com/)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```
