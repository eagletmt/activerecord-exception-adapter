# ActiveRecord::ConnectionAdapters::ExceptionAdapter
[![Gem Version](https://badge.fury.io/rb/activerecord-exception-adapter.svg)](http://badge.fury.io/rb/activerecord-exception-adapter)
[![Build Status](https://travis-ci.org/eagletmt/activerecord-exception-adapter.svg?branch=master)](https://travis-ci.org/eagletmt/activerecord-exception-adapter)

ActiveRecord adapter that raises an exception when used.

## Installation

Add this line to your application's Gemfile:

    gem 'activerecord-exception-adapter'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install activerecord-exception-adapter

## Usage

```yaml
production_unused:
    adapter: exception
    comment: Do NOT use production_unused!
```

## Contributing

1. Fork it ( https://github.com/eagletmt/activerecord-exception-adapter/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
