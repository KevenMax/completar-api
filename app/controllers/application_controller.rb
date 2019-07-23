class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  before_action :ensure_json_request
  before_action :configure_permitted_parameters, if: :devise_controller?

  def ensure_json_request
    unless request.headers["Accept"] =~ /vnd\.api\+json/
      render body: nil, :status => 406
    else
      unless request.get?
        return if request.headers["Content-Type"] =~ /json/
        render body: nil, :status => 415
      end
    end
  end

  protected

  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :password_confirmation, :nome, :apelido, :matricula, :contato, :campu_id, :curso_id])
  end
end
