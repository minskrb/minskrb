class EventsController < ApplicationController
  def index
    @event = Event.upcoming
  end

  def show
    @event = Event.find(params[:id])
  end
end
