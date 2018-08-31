module Events
  class PhotosController < ApplicationController
    def index
      @event = Event.find(params[:event_id])
      @event_images = @event.images
    end
  end
end
