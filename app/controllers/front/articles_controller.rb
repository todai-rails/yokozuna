class Front::ArticlesController < FrontController
  def index
  end
  
  def new
    # ログインユーザーに紐づく記事を作成
    article = current_user.articles.create!
    # 記事編集画面へ遷移
    redirect_to edit_front_article_path(article)
  end

  def edit
  end
end