# Events controller class
class EventsController < ApplicationController

	before_action :set_event, only: [:show, :edit, :update, :detroy ]

	def index
		@events = Event.all
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(event_params)
		if @event.save
			redirect_to @event
		else
			render :edit
		end
	end

	def show
	end
	
	def edit
	end

	def update
		if @event.update_attributes(event_params)
			redirect_to event_path
		else
			render 'new'
		end 
	end

	def destroy
		@event.destroy
		redirect_to event_path
	end

	private

	def event_params
		params.require(:event).permit(:title, :place_title, :description, :start_at, :end_at )
	end

	def set_event
		@event = Event.find(params[:id])
	end
end