class MetricsController < ApplicationController
    skip_before_action :authenticate_request

    def index
      total_messages = Message.count
      active_users = User.count
      render json: {
        total_messages: total_messages,
        active_users: active_users
      }
    end
end