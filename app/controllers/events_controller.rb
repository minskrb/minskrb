class EventsController < ApplicationController
  def index
    @event = Event.upcoming
    @schedule = EventItem.where(event: @event)
    @speakers = @event.event_items.talks
  end
end
