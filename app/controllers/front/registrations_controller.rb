class Front::RegistrationsController < FrontController
  def new
    # フォーム用に初期化
    # @をつけることでviewでつかえるようになる
    @user = User.new
  end

  def create
    # 標準的なパターンで作成する
    # mass assignment 脆弱性について
    @user = User.new(params.require(:user).permit(:name, :password))

    if @user.save
      redirect_to front_root_url
    else
      render :new
    end
  end
end
