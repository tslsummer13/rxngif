class Picture
  def Picture.all
    return [
      { source: "http://www.w3.org/html/logo/downloads/HTML5_Logo_512.png", caption: "HTML5 Logo" },
      { source: "http://upload.wikimedia.org/wikipedia/commons/f/f1/Ruby_logo.png", caption: "Ruby logo" },
      { source: "http://upload.wikimedia.org/wikipedia/commons/1/16/Ruby_on_Rails-logo.png", caption: "Rails logo" },
      { source: "http://upload.wikimedia.org/wikipedia/commons/6/6a/JavaScript-logo.png", caption: "JavaScript logo" }
      ]
  end

  def Picture.first
    return Picture.all.first
  end

  def Picture.last
    return Picture.all.last
  end

  def Picture.find(id)
    return Picture.all[id.to_i]
  end
end
