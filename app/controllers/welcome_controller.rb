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
