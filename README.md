# SmartPolling

SmartPolling is the smartest way to poll something. It keeps polling something, for a limited time, until it gets a response.

[![Build Status](https://travis-ci.org/mateusdelbianco/smart_polling.png)](https://travis-ci.org/mateusdelbianco/smart_polling)
[![Code Climate](https://codeclimate.com/github/mateusdelbianco/smart_polling.png)](https://codeclimate.com/github/mateusdelbianco/smart_polling)
[![Coverage Status](https://coveralls.io/repos/mateusdelbianco/smart_polling/badge.png?branch=master)](https://coveralls.io/r/mateusdelbianco/smart_polling?branch=master)

## Installation

Add this line to your application's Gemfile:

    gem 'smart_polling'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install smart_polling

## Usage

It will call the external service until the response is "done":

```ruby
SmartPolling.poll(seconds: 60, delay: 5) do
  response = ExternalService.call
  response == "done"
end
```

## Contributing

1. Fork it ( http://github.com/mateusdelbianco/smart_polling/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
