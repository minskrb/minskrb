class EventsController < ApplicationController
  def index
    @event = Event.upcoming
  end

  def show
    @events = Event.passed
  end
end
