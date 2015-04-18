class Front::RegistrationsController < FrontController
  def new
    @user = User.new
  end

  def create
    # 送信先
    puts '送信先！！！'
  end
end
