module ApplicationHelper

  def comment_messages!

      messages = "message"
      sentence = "sentence"

      html = <<-HTML
      <div class="alert">
        <p><strong>#{sentence}</strong></p>
        <ul>#{messages}</ul>
      </div>
      HTML

      html.html_safe
    end
end
