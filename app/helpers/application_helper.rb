module ApplicationHelper
  require "redcarpet"

  def markdown(text)
    options = {
      #highlight: true
    }
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, options)
    markdown.render(text).html_safe
  end

end
