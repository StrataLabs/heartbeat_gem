module Heartbeat
  module ActionDispatch
    def heartbeat
      self.get "/heartbeat", :controller => "heartbeat/heartbeat", :action => "index"
      yield Heartbeat.config if block_given?
    end
  end
end

ActionDispatch::Routing::Mapper.send(:include, Heartbeat::ActionDispatch)
