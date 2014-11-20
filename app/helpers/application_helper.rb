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


  def shorten_with_bitly(url)
      bitly = Bitly.new("o_576rk84o2m", "R_5b40b3c45b0849f7a4c42925e8c2c0cc")
      bitly.shorten(url).short_url
  end


end
