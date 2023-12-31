class MessagesController < ApplicationController
  def create
    @current_user = current_user
    @message = @current_user.messages.create(content: msg_params[:content], room_id: params[:room_id], attachments: msg_params[:attachments])
  end

  # def destroy
  #   @current_user = current_user
  #   @message = @current_user.messages.find(params[:id])
  #   @message.destroy
  # end

  private
  def msg_params
    params.require(:message).permit(:id, :content, attachments: [] )
  end
end
