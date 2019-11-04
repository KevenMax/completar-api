class ApplicationController < ActionController::API
  before_action :valid_authenticate
  include Auths

  def valid_authenticate
    authenticate
  end
end
