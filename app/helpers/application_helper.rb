# frozen_string_literal: true

# Helper functions made here are accessable in all views
# for example, app_name is now accessable to all views
module ApplicationHelper
  def app_name
    conf = app_config
    if conf.nil?
      '?'
    else
      conf.name
    end
  end

  private

  def app_config
    AppConfig.first
  end
  
  def nav_link(text, path)
    if current_page?(path)
        content_tag :li, class: "nav-items active" do
            link_to(path, class: "nav-link") do
                sanitize(text) + content_tag(:span, "(current)", class: "sr-only")
    
            end
        end
    else
        content_tag :li, class: "nav-items" do
            link_to(text, path, class: 'nav-link')
        end
    end
end    
end
