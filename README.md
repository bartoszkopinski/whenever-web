# Whenever Web

Whenever Web is a Rails engine, that can be easily integrated with your admin panel layout.

![Whenever Web](http://i.imgur.com/d6whPlQ.png)

## Installation

Add this line to your application's Gemfile:

    gem 'whenever-web'

And then execute:

    $ bundle

## Usage

1. Mount the engine in your `routes.rb`:

  ```ruby
  MyApp::Application.routes.draw do
    # ...
    mount Whenever::Web, at: '/whenever'
    # ...
  end
  ```

2. Go to [localhost:3000/whenever](http://localhost:3000/whenever).

3. Add a link to the panel in your views:

  ```ruby
  = link_to 'Cron Jobs', whenever_path
  ```

## Optional usage

Describe your Cron jobs in `schedule.rb` by using `desc` method:

```ruby
require 'whenever/web'

every 1.day, at: '3:00 am' do
  desc 'Database Backup'
  rake 'db:backup'
end
```

## Custom configuration

Put this into `config/initializers/whenever_web.rb`:

```ruby
# Specify your own controller base eg. 'Admin::AdminController'
# Whenever::Web.config.parent_controller = 'Whenever::WebController'

# Change default schedule file path
# Whenever::Web.config.schedule_file = 'config/schedule.rb'
```

## Contributing

1. Fork it (http://github.com/bartoszkopinski/whenever-web/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
