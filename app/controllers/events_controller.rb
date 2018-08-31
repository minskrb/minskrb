class EventsController < ApplicationController
  def index
    @event = Event.upcoming
    @schedule = EventItem.where(event: @event)
    @talks = @schedule.talks
  end

  def show
    @events = Event.passed
  end
end
