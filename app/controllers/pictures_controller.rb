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

    if p.source.present? && p.caption.present?
      p.save
      redirect_to "http://localhost:3000/pictures", notice: "Created picture successfully."
    else
      redirect_to "http://localhost:3000/pictures/new", notice: "Epic fail. Must provide both URL and caption."
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

    if @picture.source.present? && @picture.caption.present?
      @picture.save
      redirect_to "http://localhost:3000/pictures", notice: "Updated picture successfully."
    else
      redirect_to "http://localhost:3000/pictures/#{@picture.id}/edit", notice: "Epic fail. Must provide both URL and caption."
    end
  end
end












