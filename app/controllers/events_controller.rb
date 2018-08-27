class EventsController < ApplicationController
  def index
    @event = Event.upcoming_event
  end

  def show
    @event = Event.find(params[:id])
  end
end
