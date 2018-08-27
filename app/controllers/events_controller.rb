class EventsController < ApplicationController
  before_action :show_event, only: %i[show_speakers show_photos show_videos]

  def index
    @event = Event.upcoming
  end

  def show_speakers
    @speakers = @event.event_items.show_speakers
  end

  def show_photos

  end

  def show_videos

  end

  private

  def show_event
    @event = Event.find(params[:id])
  end
end
