module EventsHelper
  def active_if(controller_name)
    return 'active' if params[:controller] =~ /#{controller_name}$/
  end

  def youtube_title(link)
    VideoInfo.new(link).title
  end

  def youtube_embed_code(link)
    VideoInfo.new(link).embed_code
  end
end
