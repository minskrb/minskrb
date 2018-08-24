class EventsController < ApplicationController
  def index
    @event = Event.upcoming_event
    render "upcoming_event" if @event
  end

  def show
    @event = Event.find(params[:id])
  end
end
