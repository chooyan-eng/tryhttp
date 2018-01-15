# Tryhttp

TryHttp is a HTTP client / server gem, which supports to understand how HTTP works.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tryhttp'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tryhttp

## Usage

First of all, you can start with understanding how TCP works.
Tryhttp provides APIs to open TCP server and TCP client.

To start TCP server, you can write the code below.

```
require 'tryhttp'

server = Tryhttp::TcpServer.new(20000)
server.open
server.accept
server.wait_for_receive { |data| p data }
```

Then, save the code above (e.g. main.rb) and run.

```
$ ruby main.rb
```

Now, you can connect to the server with port 20000.
Open another terminal and type the command below to connect to the server.

```
$ nc localhost 20000
```

You can type anything you like. You can see server outputs what you type on the client window.

You may feel the server code is verbose as you CANNOT open the server with a single method.

However, it would be great help to understand state and lifecycle of TCP connection (such in `open`, `listen`, `accept`, etc).

Because Tryhttp is NOT for practical use but for learning __how HTTP is working__, the API is designed to make user understand how HTTP, based on TCP, is working step by step.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/chooyan-eng/tryhttp. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

