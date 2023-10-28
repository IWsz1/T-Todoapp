class PostsController < ApplicationController

  def index 
    @test = "コントローラーで宣言した変数"
    @data = Post.find(1)
    @datas = Post.all
      
  end
  def new
  end

  def create
    # フォーム入力値をデータベースにクリエイト　contentがカラム名　paramsがフォーム入力されたハッシュデータ[:content(フォームの記入箇所でcontentという目印を付けている カラム名とは別で問題ない)でカラム箇所のデータを呼び出す]
    Post.create(content: params[:content])
    # 上記処理が完了したらページをリダイレクトする
    redirect_to "/posts"
  end

end
