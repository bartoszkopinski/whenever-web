# Whenever Web

## Installation

Add this line to your application's Gemfile:

    gem 'whenever-web'

And then execute:

    $ bundle

## Usage

Mount the engine in your `routes.rb`:

```ruby
MyApp::Application.routes.draw do
  # ...
  mount Whenever::Web, at: '/whenever'
  # ...
end
```

And go to `/whenever`.

You can add a link to the panel in your views:

```ruby
= link_to 'Cron Jobs', whenever_path
```

You can also optionally describe the Cron jobs in `schedule.rb`:

```ruby
require 'whenever/web'

every 1.day, at: '3:00 am' do
  desc 'Database Backup'
  rake 'db:backup'
end
```

## Contributing

1. Fork it (http://github.com/bartoszkopinski/whenever-web/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
