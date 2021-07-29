class ParksController < ApplicationController

  def index
    parks = Park.all
    render json: parks.as_json
  end

  def create
    park = Park.new(
      name: params[:name],
      district: params[:district],
      address: params[:address],
      facility: params[:facility],
      indoor: params[:indoor],
      outdoor: params[:outdoor],
      image: params[:image]
    )
    park.save
    render json: park.as_json
  end

  def show
    park = Park.find_by(id: params[:id])
    render json: park.as_json
  end

  def update
    park = Park.find_by(id: params[:id])
    park.name = params[:name] || park.name
    park.district = params[:district] || park.district
    park.address = params[:address] || park.address
    park.facility = params[:facility] || park.facility
    park.indoor = params[:indoor] || park.indoor
    park.outdoor = params[:outdoor] || park.outdoor
    park.image = params[:image] || park.image
    park.save
    render json: park.as_json
  end

  def destroy
    park = Park.find_by(id: params[:id])
    park.destroy
    render json: {message: "Park successfully deleted."}
  end

end
