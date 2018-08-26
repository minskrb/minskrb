module ApplicationHelper
  def component(component_name, locals = {}, &block)
    name = component_name.split("_").first
    render("components/#{name}/#{component_name}", locals, &block)
  end

  def current_page?(path)
    return 'active' if request.path == path
  end

  alias c component
  alias cp current_page?
end
