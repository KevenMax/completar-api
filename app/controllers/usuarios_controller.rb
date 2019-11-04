class UsuariosController <  ActionController::API
  before_action :valid_authenticate, only: [:update]
  include Auths

  def create
    @usuario = Usuario.new(usuarios_params)
    if @usuario.save
      render json: @usuario, status: 201
    else
      render json: @usuario.errors, status: 422
    end
  end
  
  def update
    usuario = Usuario.find(current_usuario.id)
    if usuario.update(usuario_params)
      render json: usuario, status: 200
    else
      render json: usuario.errors.full_messages, status: 422
    end
  end
  
  private 
  
  def usuario_params
    params.permit(:email, :password, :password_confirmation, :nome, :apelido, :matricula, :foto, :contato, :administrador, :campu_id, :curso_id)
  end

  def valid_authenticate
    authenticate
  end
end
