module PostsHelper
  # This isn't strictly correct, but it's a pretty good guess
  # and saves another hit to the DB
  def more_content?
    @posts.size == Post::DEFAULT_LIMIT
  end
  
  def facebook_like(url)
    render 'shared/facebook_like', :url => url
  end
  
  def google_plus(url)
    render 'shared/plus', :url => url
  end
  
end
