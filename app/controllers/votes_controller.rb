class VotesController < ApplicationController
  def upvote
    session[:voting_ip] = request.remote_ip
    voter = User.find_or_create_by(ip: session[:voting_ip])
    account = Account.find params[:account_id]
    account.liked_by voter
    redirect_back(fallback_location: root_path)

  end

  def downvote
    session[:voting_ip] = request.remote_ip
    voter = User.find_or_create_by(ip: session[:voting_ip])
    account = Account.find params[:account_id]
    account.downvote_from voter
    redirect_back(fallback_location: root_path)
  end
end