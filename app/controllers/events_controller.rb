class EventsController < ApplicationController
  def index
    @event = Event.upcoming
  end

  def show; end
end
