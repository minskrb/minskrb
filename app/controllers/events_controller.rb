class EventsController < ApplicationController
  def index
    @event = Event.where(["start_at > ?", Time.now]).first
  end

  def show
    @event = Event.find(params[:id])
  end
end
