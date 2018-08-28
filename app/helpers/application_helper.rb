module ApplicationHelper
  def component(component_name, locals = {}, &block)
    name = component_name.split("_").first
    render("components/#{name}/#{component_name}", locals, &block)
  end

  def active_if(controller_name)
    return 'active' if params[:controller] =~ /#{controller_name}$/
  end

  alias c component
end
