class EventsController < ApplicationController

  def index
    @event = Event.upcoming
  end
end
