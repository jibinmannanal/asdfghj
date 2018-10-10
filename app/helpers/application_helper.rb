module ApplicationHelper
  def full_title(page_title = '')
    base_title = "Soba Books"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
  def active_link_to(name = nil, options = nil, html_options = nil, &block)
    active_class = html_options[:active] || "active"
    html_options.delete(:active)
    html_options[:class] = "#{html_options[:class]} #{active_class}" if current_page?(options)
    link_to(name, options, html_options, &block)
  end
end
