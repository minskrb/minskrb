class EventsController < ApplicationController
  def index
    @event = Event.upcoming
    @schedule = EventItem.where(event: @event)
    @talks = @schedule.talks
  end

  def show
    @events = Event.passed.includes(:event_items, :videos, :images)
  end
end
