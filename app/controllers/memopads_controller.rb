# coding: utf-8

class MemopadsController < ApplicationController
  
  def index
    @memopads = Memopad.all
  end
  
  def show
    @memopad = Memopad.find(params[:id])
  end

  def new
    @memopad = Memopad.new
  end
  
  def edit
    @memopad = Memopad.find(params[:id])
  end
  
  def create
    @memopad = Memopad.new(params[:memopad])
    
    if @memopad.save
      redirect_to @memopad, notice: "メモを登録しました。"
    else 
      render "new"
    end
  end
  
  def update
    @memopad = Memopad.find(params[:id])
    if @memopad.update_attributes(params[:memopad])
      redirect_to @memopad, notice: 'メモを更新しました。' 
    else
      render action: "edit" 
    end
  end
  
  def destroy
    @memopad = Memopad.find(params[:id])
    @memopad.delete
    redirect_to controller: :memopads, action: :index, notice: 'メモを削除しました。'
  end
  
  
  
end
