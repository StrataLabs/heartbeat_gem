module Heartbeat
  module ActionDispatch
    def heartbeat
      self.get "/heartbeat", :controller => "heartbeat/heartbeat", :action => "index"
    end
  end
end

ActionDispatch::Routing::Mapper.send(:include, Heartbeat::ActionDispatch)