# Rick and Morty ruby gem example implementation

This is a example Ruby on Rails app which makes use of the [ruby client gem implementation](https://github.com/spielhoelle/rick-and-morty-gem) for the fantastic [Rick & Morty Api](https://github.com/afuh/rick-and-morty-api) by [Afuh](https://github.com/afuh)

## Installation

1. `git clone https://github.com/spielhoelle/rick-and-morty-gem-examle-app`
1. `cd rick-and-morty-gem-examle-app`
1. `bundle install`
1. `bundle exec rails server`

open `localhost:3000` to see all the queried endpoints in the frontend.

Example queries in the WelcomeController:

```ruby
class WelcomeController < ApplicationController
  protect_from_forgery with: :exception
  def index
    @all_episodes = Rickmorty::Episode.new.all
    @all_characters = Rickmorty::Character.new.all
    @all_locations = Rickmorty::Location.new.all

    @rick = Rickmorty::Character.new.by_id(1)
    @morty = Rickmorty::Character.new.by_id(2)
  end
end
```
