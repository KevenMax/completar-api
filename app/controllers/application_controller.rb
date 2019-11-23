class ApplicationController < ActionController::API
  before_action :valid_authenticate
  before_action :current

  include Auths

  def valid_authenticate
    authenticate
  end

  def current
    @usuario = Usuario.find(current_usuario.id)
  end

end
