module ApplicationHelper
  require "redcarpet"

  def markdown(text)
    render_options = {
      escape_html:true,
      hard_wrap: true
    }
    extensions = {
      #highlight: true
    }
    renderer = Redcarpet::Render::HTML.new(render_options)
    markdown = Redcarpet::Markdown.new(renderer, extensions)
    markdown.render(text).html_safe
  end

end
