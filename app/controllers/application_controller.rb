class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :record_page_view
  
  private
  
  def record_page_view
    if user_signed_in?
      page_view = PageView.new(
        :user => current_user,
        :request_url => request.url,
        :ip_address => request.remote_ip,
        :referer => request.referer,
        :user_agent => request.env["HTTP_USER_AGENT"],
        :controller_name => self.controller_name,
        :action_name => self.action_name
      )
      page_view.save
    end
  end
end
