class EventsController < ApplicationController
  def index
    @event = Event.upcoming
    @schedule = @event.event_items.schedule
  end
end
