require "heartbeat/version"
require "heartbeat/engine" if defined?(Rails)
require "heartbeat/config"
require "heartbeat/action_dispatch"
module Heartbeat
  def self.config
    @config ||= Heartbeat::Config.new
    yield(@config) if block_given?
    @config
  end
end
