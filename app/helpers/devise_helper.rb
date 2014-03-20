module DeviseHelper
  # Overwrites devise_error_messages!
  # https://github.com/plataformatec/devise/blob/master/app/helpers/devise_helper.rb
  def devise_error_messages!
      return "" if resource.errors.empty?

      messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
      sentence = I18n.t("errors.messages.not_saved",
                        :count => resource.errors.count,
                        :resource => resource.class.model_name.human.downcase)

      html = <<-HTML
      <div class="alert">
        <p><strong>#{sentence}</strong></p>
        <ul>#{messages}</ul>
      </div>
      HTML

      html.html_safe
    end
end