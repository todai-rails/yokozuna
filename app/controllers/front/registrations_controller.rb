class Front::RegistrationsController < FrontController
  def new
    @user = User.new
  end

  def create
    # 送信先
    puts '送信先！！！'

    # paramsのuserの中のnameとpasswordだけを許可します
    @user = User.new(params.require(:user).permit(:name, :password))

    # model.save はsaveできたらtrue, できなかったらfalseを返す
    if @user.save
      redirect_to front_root_url
    else
      render :new, status: 422
    end
  end
end
