require 'active_support/lazy_load_hooks'

module ActiveRecordExceptionAdapter
  def exception_connection(config)
    ActiveRecord::ConnectionAdapters::ExceptionAdapter.new(config)
  end
end

ActiveSupport.on_load(:active_record) do
  require 'active_record/connection_adapters/exception_adapter'
  ActiveRecord::Base.extend ActiveRecordExceptionAdapter
end
