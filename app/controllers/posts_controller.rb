class PostsController < ApplicationController
 def index
    @posts = Post.all.order(id: "DESC")
 end
 
 def create
   Post.create(content: params[:content])
   redirect_to action: :index #トップページへ戻るアクション
  end

  def checked
    post = Post.find(params[:id]) #レコードを取得する記述
    if post.checked then
      post.update(checked: false) 
    else
      post.update(checked: true)
    end
# post.checkedで既読したかどうかを条件分岐している
    item = Post.find(params[:id])
    render json: { post: item 
      # json形式でchecked.jsに変換している
  end
end
