module Events
  class PhotosController < ApplicationController
    def index
      @event = Event.find(params[:event_id])
      @photos = @event.images
    end
  end
end
