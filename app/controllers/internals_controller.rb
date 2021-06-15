class InternalsController < ApplicationController
  def status
    render json: {status: 'up'}, status: :ok
  end
end