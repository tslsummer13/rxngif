module ApplicationHelper
  def pictures_url
    return "http://localhost:3000/pictures"
  end

  def picture_url(id)
    # Should return the URL for a single picture
    return "http://localhost:3000/pictures/#{id}"
  end

  def new_picture_url
    # Should return the URL for the new picture form
  end

  def edit_picture_url(id)
    # Should return the URL for the edit picture form
  end
end
