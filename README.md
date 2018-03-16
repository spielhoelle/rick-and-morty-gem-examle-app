# README

[![Greenkeeper badge](https://badges.greenkeeper.io/spielhoelle/rick-and-morty-gem-examle-app.svg)](https://greenkeeper.io/)
```
class WelcomeController < ApplicationController
  protect_from_forgery with: :exception
  def index
    @e = Rickmorty::Episode.new.all
    @c = Rickmorty::Character.new.all
    @l = Rickmorty::Location.new.all
    @rick = Rickmorty::Character.new.by_id(1)
    @morty = Rickmorty::Character.new.by_id(2)
  end
end
```
