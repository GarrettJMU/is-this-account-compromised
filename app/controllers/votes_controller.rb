class VotesController < ApplicationController
  def create
    session[:voting_ip] = request.remote_ip
    voter = User.find_or_create_by(ip: session[:voting_ip])
    voter.likes @thread
  end
end