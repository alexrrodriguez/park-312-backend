class ParkEventsController < ApplicationController

  def index
    park_events = ParkEvent.all
    render json: park_events.as_json
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
    render json: park_events.as_json
  end

  # def show
  #   park = Park.find_by(id: params[:id])
  #   render json: park.as_json
  # end

  # def update
  #   park = Park.find_by(id: params[:id])
  #   park.name = params[:name] || park.name
  #   park.district = params[:district] || park.district
  #   park.address = params[:address] || park.address
  #   park.facility = params[:facility] || park.facility
  #   park.indoor = params[:indoor] || park.indoor
  #   park.outdoor = params[:outdoor] || park.outdoor
  #   park.image = params[:image] || park.image
  #   park.save
  #   render json: park.as_json
  # end

  # def destroy
  #   park = Park.find_by(id: params[:id])
  #   park.destroy
  #   render json: {message: "Park successfully deleted."}
  # end

end
