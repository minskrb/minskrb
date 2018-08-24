class EventsController < ApplicationController
  def index
    @event = Event.upcoming
  end

  def show;end

  def friends;end

  def about;end

  def contact_us;end
end
