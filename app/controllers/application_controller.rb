class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method(:pictures_url)
  helper_method :picture_url
  helper_method :new_picture_url
  helper_method :edit_picture_url

  # TODO Move these helpers to a better place

  def pictures_url
    return "http://localhost:3000/pictures"
  end

  def picture_url(id)
    # Should return the URL for a single picture
    return "http://localhost:3000/pictures/#{id}"
  end

  def new_picture_url
    # Should return the URL for the new picture form
    return "http://localhost:3000/pictures/new"
  end

  def edit_picture_url(id)
    return "http://localhost:3000/pictures/#{id}/edit"
  end
end
