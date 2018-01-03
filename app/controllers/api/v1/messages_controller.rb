class Api::V1::MessagesController < ApplicationController
  def index
    # vars = request.query_parameters
    # receiver = Integer(vars['receiver_id'])
    # sender = Integer(vars['sender_id'])

    # player_id = params["receiver_id"]
    # byebug
    my_sent_messages = my_user.sent_messages.where(receiver_id:params['receiver_id'])
    my_received_messages = my_user.received_messages.where(sender_id:params['receiver_id'])
    all_messages = my_sent_messages + my_received_messages
    sorted_messages = all_messages.sort_by{|obj| obj.created_at}
    # byebug
    # my_received_messages = my_user.sent_messages.where(sender_id: player_id)

    # get the messages the receiver has sent you
    # combine them into an array
    # sort the new array by datetime
    # then return json of those messages

    # Message.where().sort().all
    # render json:Message.where(receiver_id: receiver, sender_id: sender).order(:created_at).all
    render json:sorted_messages
  end

  def show

  end

  def create
    message = Message.create(sender_id: params[:sender_id], receiver_id: params[:receiver_id], content: params[:content])
    render json:message
  end

  def edit

  end

  def update

  end

  def destroy

  end

end
