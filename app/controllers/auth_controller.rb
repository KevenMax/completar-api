class AuthController < ActionController::API
  before_action :validate_create, only: [:create]

  def create
    @usuario = Usuario.find_by_email(params[:email])
    if !@usuario.blank?
      if BCrypt::Password.new(@usuario.password_digest) == params[:password]

        secret_key = Rails.application.credentials.secret_key_jwt
        payload = { sub: @usuario.id }
        token = JWT.encode payload, secret_key, 'HS256'

        response.set_header('token', token)
        render json: @usuario, include: [:campu, :curso]
      else
        render json: {error: 'E-mail ou senha inválida'}, status: 401
      end
    else
      render json: {error: 'E-mail ou senha inválida'}, status: 401
    end
  end

  private

  def validate_create
    if !params[:email] || !params[:password]
      render body: nil, status: 400
    end
  end
end