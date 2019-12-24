class ApplicationController < ActionController::Base
  before_action :basic_auth, if: :production?

  private

  def production?
    Rails.env.production?
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == Rails.application.credentials.basic_atuth[:username] && Rails.application.credentials.basic_atuth[:password]
    end
  end
end
