module Events
  class VideosController < ApplicationController
    def index
      @event = Event.find(params[:event_id])
      @videos = @event.videos
    end
  end
end
