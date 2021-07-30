class ParkEventsController < ApplicationController

  def index
    park_events = current_user.park_events
    render json: park_events
  end

  def create
    park_events = ParkEvent.new(
      user_id: current_user.id,
      park_id: params[:park_id],
      facility: params[:facility],
      date: params[:date],
      time: params[:time],
      attending: params[:attending]
    )
    park_events.save
    render json: park_events
  end

  def show
    park_event = ParkEvent.find_by(id: params[:id])
    render json: park_event
  end

  def update
    park_event = ParkEvent.find_by(id: params[:id])
    park_event.date = params[:date] || park_event.date
    park_event.time = params[:time] || park_event.time
    park_event.attending = params[:attending] || park_event.attending
    park_event.save
    render json: park_event
  end

  def destroy
    park_event = ParkEvent.find_by(id: params[:id])
    park_event.destroy
    render json: {message: "Park Event successfully deleted."}
  end

end
