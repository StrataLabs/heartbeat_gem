module Heartbeat
  class Config
    attr_reader :count_models
    def initialize
      @count_models = []
    end
    
    def count_of(*models)
      @count_models += models
    end
  end
end