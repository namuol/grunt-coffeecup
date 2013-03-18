# grunt-coffeecup
*WORK IN PROGRESS -- PRE-GENERATED DOCS AND TESTS*

> Compile CoffeeCup into HTML.

## Getting Started
This plugin requires Grunt `~0.4.1`

If you haven't used [Grunt](http://gruntjs.com/) before, be sure to check out the [Getting Started](http://gruntjs.com/getting-started) guide, as it explains how to create a [Gruntfile](http://gruntjs.com/sample-gruntfile) as well as install and use Grunt plugins. Once you're familiar with that process, you may install this plugin with this command:

```shell
npm install grunt-coffeecup --save-dev
```

Once the plugin has been installed, it may be enabled inside your Gruntfile with this line of JavaScript:

```js
grunt.loadNpmTasks('grunt-coffeecup');
```

## The "coffeecup" task
_Run this task with the `grunt coffeecup` command._

Task targets, files and options may be specified according to the grunt [Configuring tasks](http://gruntjs.com/configuring-tasks) guide.

### Options

Any items in the `options` object are passed to CoffeeCup's `render` function.

### Usage Examples

#### Default Options
```coffee-script
grunt.initConfig
  # ... other configurations ...
  coffeecup:
    simple:
      'path/to/result.html': 'path/to/source.coffee'
    recurse:
      expand: true
      cwd: 'path/to'
      src: ['**/*.coffee']
      dest: 'path/to/dest'
      ext: '.html'
```

## Contributing
In lieu of a formal styleguide, take care to maintain the existing coding style. Add unit tests for any new or changed functionality. Lint and test your code using [Grunt](http://gruntjs.com/).

## Release History
 * 2013-03-18  v0.1.0  Bare minimum tests pass.
