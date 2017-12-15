class Api::V1::MessagesController < ApplicationController
  def index
    render json: Message.all
  end

  def show

  end

  def create
    message = Message.create(user_id: params[:user_id], content: params[:content])
    render json:message
  end

  def edit

  end

  def update

  end

  def destroy

  end

end
