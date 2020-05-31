# Cough
Simple health check for your rails application.

## Usage
Mount the engine in your `config/routes.rb` file, using any preferred path.
```
mount Cough::Engine => '/health'
```

The following environment variables can be set

SERVICE_NAME, COMMIT, JOB, STAGE

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'cough'
```

## Contributing
This is for personal use, but you are welcome to suggest any changes.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
