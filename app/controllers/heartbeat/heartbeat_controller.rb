module Heartbeat
  class HeartbeatController < ActionController::Base
    unloadable

    def index
      total = Heartbeat.config.count_models.inject(0) do |total, model|
        total + model.count
      end

      respond_to do |format|
        format.xml { render :xml => {:total => total}.to_xml(:root => "heartbeat")}
        format.json { render :json => {:heartbeat => {:total => total}}}
        format.html { render :text => "Total : #{total}"}
      end
    end
  end
end
