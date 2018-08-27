module ApplicationHelper
  def component(component_name, locals = {}, &block)
    name = component_name.split("_").first
    render("components/#{name}/#{component_name}", locals, &block)
  end

  def current_page?(path)
    return 'active' if request.path == path
  end

  def youtube_title(link)
    VideoInfo.new(link).title
  end

  def youtube_embed_code(link)
    VideoInfo.new(link).embed_code
  end

  alias c component
  alias cp current_page?
end
