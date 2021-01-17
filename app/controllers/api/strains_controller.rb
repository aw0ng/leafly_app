class Api::StrainsController < ApplicationController

  def index
    @strains = Strain.all
    render "index.json.jb"
  end

  def create
    @strain = Strain.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
      )
    @strain.save
    render "show.json.jb"
  end

  def show
    @strain = Strain.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @strain = Strain.find_by(id: params[:id])
    @strain.name = params[:name] || @strain.name
    @strain.price = params[:price] || @strain.price
    @strain.image_url = params[:image_url] || @strain.image_url
    @strain.description = params[:description] || @strain.description
    @strain.save
    render "show.json.jb"
  end

  def destroy
    strain = Strain.find_by(id: params[:id])
    strain.destroy
    render json: {message: "Strain successfully destroyed."}
  end
end
