# Aqui

[![Build Status](https://travis-ci.org/hstove/aqui.svg?branch=master)](https://travis-ci.org/hstove/aqui)
[![Code Climate](https://codeclimate.com/github/hstove/aqui.png)](https://codeclimate.com/github/hstove/aqui)
[![Coverage Status](https://coveralls.io/repos/hstove/aqui/badge.svg)](https://coveralls.io/r/hstove/aqui)

A gem for making sure some code is running.

Sometimes when coding, you run into a situation where you want to make sure
a bit of code is being executed by your application. You might end up
typing something like:

~~~ruby
try_this
puts 'this is running'
try_another
puts 'blasfdd'
~~~

This way, you can run your code and check your logs to see if the `put`
methods were called. If this short and simple effective method works for you,
then give `aqui` a shot next time. It looks like this:

~~~ruby
try_this
aqui
try_another
aqui
~~~

This time, the output is colorized and contains information about where the code is running:

![screenshot](http://i.imgur.com/2AdA8YB.png)

## Installation

```ruby
gem 'aqui'
```

## Usage

```ruby
aqui
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/aqui/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
