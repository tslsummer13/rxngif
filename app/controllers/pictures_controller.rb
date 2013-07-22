class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def new

  end

  def create
    p = Picture.new
    p.source = params[:source]
    p.caption = params[:caption]
    p.save

    redirect_to "http://localhost:3000/pictures"
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy

    redirect_to "http://localhost:3000/pictures"
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])

    @picture.source = params[:source]
    @picture.caption = params[:caption]
    @picture.save

    redirect_to "http://localhost:3000/pictures/#{@picture.id}"
  end
end












