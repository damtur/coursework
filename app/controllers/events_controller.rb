class EventsController < ApplicationController

 def index
    @title = "History"
    @events = Event.all
  end

end
