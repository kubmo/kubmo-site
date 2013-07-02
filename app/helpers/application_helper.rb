module ApplicationHelper
  def active_if_current_link(id, text, options = {})
    options[:class] ||= []
    if controller_name == id
      options[:class].push(:active)
    end
    link_to text, "##{id}", options
  end
end
