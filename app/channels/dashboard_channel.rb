class DashboardChannel < ApplicationCable::Channel
    def subscribed
      stream_from "dashboard_events"
    end
  
    def unsubscribed
    end
  end
  