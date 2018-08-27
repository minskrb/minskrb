module Events
  class SpeakersController < ApplicationController
    def index
      @event = Event.find(params[:event_id])
      @speakers = @event.event_items.show_speakers
    end
  end
end
