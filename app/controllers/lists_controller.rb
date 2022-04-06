class ListsController < ApplicationController
  def new
    @list = List.new
  end
  
  def create
    
    #データを受け取り新規登録するためのインスタンス作成
    list=List.new(list_params)
    
    #データをデータベースに保存するためのsaveメソッド
    list.save
    #トップ画面に戻る
    redirect_to"/top"
  end
  
  def index
    ＠lists=List.all
  end

  def show
  end

  def edit
  end
  
  private
  #ストロングパラメーター
  def list_params
    params.require(:list).permit(:title,:body)
  end

end
  