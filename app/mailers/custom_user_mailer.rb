class CustomUserMailer < Devise::Mailer

  def headers_for(action, opts)
  	backup_email = resource.sms_address

    headers = {
      :subject       => subject_for(action),
      :to            => resource.email,
      :from          => mailer_sender(devise_mapping),
      :bcc           => backup_email,
      :reply_to      => mailer_reply_to(devise_mapping),
      :template_path => template_paths,
      :template_name => action
    }.merge(opts)
  end

end