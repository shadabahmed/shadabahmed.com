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

  def twitter(url)
    render 'shared/twitter', :url => url
  end
	
  def disqus_comment_count(post)
    raw "<a href=\"#{post_path(post, :only_path => false)}#disqus_thread\" data-disqus-identifier=\"#{post.slug}\"></a>"
  end  
  
  def disqus_comments(post)
    render 'shared/disqus', :post => post
  end  
end
