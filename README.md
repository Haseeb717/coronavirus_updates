# CoronavirusUpdates

To track the number of people affected by Coronavirus in all countries. Updates of people recovered , newly cases ,states, countries effect by this disease

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'coronavirus_updates'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install coronavirus_updates

## Usage

To get the updates of any particular date 

    CoronavirusUpdates::Day.updates("mm-dd-yyyy")
    
Make sure follow the exact same date format e.g CoronavirusUpdates::Day.updates("03-08-2020"). Data available from 02-01-2020 to onwards

Response is in json format like 

    [{"Province/State":"Hubei","Country/Region":"Mainland China","Last Update":"2020-03-08T14:43:03","Confirmed":67707,"Deaths":2986,"Recovered":45235,"Latitude":30.9756,"Longitude":112.2707}]
    
## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/coronavirus_updates.

