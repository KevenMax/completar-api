module Auths
  extend ActiveSupport::Concern
  include ActionController::HttpAuthentication::Token::ControllerMethods
  
  def authenticate
    authenticate_or_request_with_http_token do |token, options|
      secret_key = Rails.application.credentials.secret_key_jwt
      JWT.decode token, secret_key, true, { algorithm: 'HS256' }
    end
  end

  def current_usuario
    authenticate_or_request_with_http_token do |token, options|
      secret_key = Rails.application.credentials.secret_key_jwt
      decode = JWT.decode token, secret_key, true, { algorithm: 'HS256' }
      return Usuario.find(decode[0]["sub"])
    end
  end
end