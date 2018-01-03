class ApplicationController < ActionController::API

  include ActionController::HttpAuthentication::Token::ControllerMethods
  before_action :authorized

  private

  def issue_token(payload)
    JWT.encode(payload, ENV['secret_key_base'], ENV['ALGORITHM'])
  end

  def decode(jwt_token)
    my_algorithm = { algorithm: ENV['ALGORITHM']}
    JWT.decode(jwt_token, ENV['secret_key_base'], true, my_algorithm)[0]
  end

  def my_user
    authenticate_or_request_with_http_token do |jwt_token, options|
      begin
        decoded_token = decode(jwt_token)
      rescue JWT::DecodeError
        return nil
      end
      if decoded_token["user_id"]
        @current_user ||= User.find(decoded_token["user_id"])
      end
    end
  end

  def logged_in?
    !!my_user
  end

  def authorized
    render json: {error: "Access denied: not authorized."}, status: 401 unless logged_in?
  end


 end
