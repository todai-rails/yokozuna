class Front::ArticlesController < FrontController
  def index
    # 記事の一覧を取得
    @articles = Article.all
  end
  
  def new
    # ログインユーザーに紐づく記事を作成
    article = current_user.articles.create!
    # 記事編集画面へ遷移
    redirect_to edit_front_article_path(article)
  end

  def edit
    # ログインユーザに紐づく記事の中からparameterのidに合致するものを取得
    @article = current_user.articles.find(params[:id])
  end

  def update
    # ログインユーザに紐づく記事の中からparameterのidに合致するものを取得
    @article = current_user.articles.find(params[:id])

    # 記事の内容を更新
    if @article.update(params.require(:article).permit(:title, :body))
      # 記事一覧画面へ遷移
      redirect_to front_articles_path
    else
      render :edit, status: 422
    end
  end

  def destroy
    @article = current_user.articles.find(params[:id])
    @article.destroy

    redirect_to front_articles_path
  end
end
