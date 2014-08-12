require 'active_record'
require 'active_record/connection_adapters/exception_adapter'

ActiveRecord::Base.class_eval do
  def self.exception_connection(config)
    ActiveRecord::ConnectionAdapters::ExceptionAdapter.new(config)
  end
end
