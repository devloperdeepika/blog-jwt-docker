require "application_responder"

class ApplicationController < ActionController::API
  self.responder = ApplicationResponder
  respond_to :html

  include JsonWebToken

  # before_action :authenticate_request

  private

    def authenticate_request
      byebug
      header = request.headers["Authorization"]
      header = header.split(" ").last if header
      @decoded = jwt_decode(header)
      @current_user = User.find(@decoded[:user_id])
    end
end
