# Aqui

[![Build Status](https://travis-ci.org/hstove/aqui.svg?branch=master)](https://travis-ci.org/hstove/aqui)
[![Code Climate](https://codeclimate.com/github/hstove/aqui.png)](https://codeclimate.com/github/hstove/aqui)
[![Coverage Status](https://coveralls.io/repos/hstove/aqui/badge.svg)](https://coveralls.io/r/hstove/aqui)

A gem for making sure some code is running.

Sometimes when coding, you run into a situation where you want to make sure
a bit of code is being executed by your application. You might end up
typing something like the following, where you aren't positive if the code about `@noises_made` is being run:

~~~ruby
class Animal
  def make_noise
    @noises_made ||= 0
    @noises_made += 1
    puts 'noises are being made!'
    nil
  end
end

class Dog < Animal
  def make_noise
    super
    'bark'
  end
end
~~~

This way, you can run your code and check your logs to see if the `put`
methods were called. If this short and simple effective method works for you,
then give `aqui` a shot next time. It looks like this:

~~~ruby
class Animal
  def make_noise
    @noises_made ||= 0
    @noises_made += 1
    aqui # <= add this!
    nil
  end
end
~~~

This time, the output is colorized and contains information about where the code is running:

![screenshot](http://i.imgur.com/M1ULD9O.png)

Handy, huh?

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
