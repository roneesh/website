module PagesHelper

  def download_url_for(key)
    return "https://s3.amazonaws.com/roneeshwebsite-lessons/#{key}"
  end

end
