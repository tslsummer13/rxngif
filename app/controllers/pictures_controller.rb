class PicturesController < ApplicationController
  def favorites
    @favorites = Picture.where({ :favorite => true })
  end

  def index
    @pictures = Picture.all
  end

  def new

  end

  def create
    p = Picture.new
    p.source = params[:source]
    p.caption = params[:caption]
    p.favorite = params[:favorite]

    if p.save
      redirect_to "http://localhost:3000/pictures", notice: "Created picture successfully."
    else
      redirect_to "http://localhost:3000/pictures/new", notice: "Epic fail. Try again."
    end
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
    @picture.favorite = params[:favorite]

    if @picture.save
      redirect_to "http://localhost:3000/pictures", notice: "Updated picture successfully."
    else
      redirect_to "http://localhost:3000/pictures/#{@picture.id}/edit", notice: "Epic fail. Try again."
    end
  end
end












