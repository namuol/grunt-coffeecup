readFile = (file) ->
  contents = grunt.file.read(file)
  contents = contents.replace(/\r\n/g, "\n")  if process.platform is "win32"
  contents

assertFileEquality = (test, pathToActual, pathToExpected, message) ->
  actual = readFile(pathToActual)
  expected = readFile(pathToExpected)
  test.equal expected, actual, message

grunt = require 'grunt'
fs = require 'fs'
coffee = require '../tasks/coffeecup'

exports.coffee =

  compileDefault: (test) ->
    test.expect 1

    assertFileEquality test,
      "tmp/default/test.html",
      "test/expected/default/test.html",
      "Should compile CoffeeCup to HTML"

    test.done()