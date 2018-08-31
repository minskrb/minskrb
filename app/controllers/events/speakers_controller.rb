module Events
  class SpeakersController < ApplicationController
    def index
      @event = Event.find(params[:event_id])
      @talks =EventItem.where(event: @event).talks
    end
  end
end
