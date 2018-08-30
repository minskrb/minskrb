class EventsController < ApplicationController
  def index
    @event = Event.upcoming
    @schedule = EventItem.where(event: @event)
  end

  def show; end
end
