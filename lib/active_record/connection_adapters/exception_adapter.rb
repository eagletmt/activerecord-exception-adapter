require 'active_record'

module ActiveRecord
  module ConnectionAdapters
    class ExceptionAdapter
      class Error < StandardError
        attr_reader :config

        def initialize(config)
          super("Do NOT use me: #{config.inspect}")
          @config = config
        end
      end

      def initialize(config)
        raise Error.new(config)
      end
    end
  end
end
