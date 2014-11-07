class MessagesController < ApplicationController

	def show
		if logged_in?
			@messages = Message.where("(sender_id = ? OR receiver_id=?) AND (sender_id=? OR receiver_id=?)", params[:id],params[:id],session[:id],session[:id])
			render json: @messages.to_json(:include => [{:sender  => {:only => [:first_name,:last_name,:picture_url]}},{:receiver =>{:only=>[:first_name,:last_name,:picture_url]}}])
		end
	end

	def create
		if logged_in?
			match = Match.where('(first_user_id = ? AND second_user_id = ?) OR (first_user_id = ? AND second_user_id = ?)',session[:id],params[:receiver_id],params[:receiver_id],session[:id])[0]
			match.touch
			Notification.create(user_id:params[:receiver_id],seen:false)

			@message = Message.create(sender_id:session[:id],receiver_id:params[:receiver_id],message:params[:message])
			render json: @message


		end
	end

end
