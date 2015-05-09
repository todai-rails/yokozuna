class Front::UsersController < FrontController
  def index
    @users = User.all
  end
end
