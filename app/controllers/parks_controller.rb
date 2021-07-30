class ParksController < ApplicationController

  def index
    parks = Park.all.order(name: :asc)
    render json: parks
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
    render json: park
  end

  def show
    park = Park.find_by(id: params[:id])
    render json: park
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
    render json: park
  end

  def destroy
    park = Park.find_by(id: params[:id])
    park.destroy
    render json: {message: "Park successfully deleted."}
  end

  def search
    district = params[:district]
    facility = params[:facility]
    indoor = params[:indoor]
    outdoor = params[:outdoor]

    if outdoor == "yes" && indoor == "" && facility == "" && district == ""
      parks = Park.where("outdoor = ?", "YES")
      render json: parks
    elsif indoor == "yes" && outdoor == "" && facility == "" && district == ""
      parks = Park.where("indoor = ?", "YES")
      render json: parks
    elsif facility == "" && district == ""
      parks = Park.all
      render json: parks
    elsif district == ""
      parks = Park.where("facility = ?", params[:facility])
      render json: parks
    elsif facility == ""
      parks = Park.where("district = ?", params[:district])
      render json: parks
    end

  end

end
