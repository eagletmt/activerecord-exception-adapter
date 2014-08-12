require 'activerecord-exception-adapter'

RSpec.describe ActiveRecordExceptionAdapter do
  before :all do
    require 'active_record'
    ActiveRecord::Base.configurations = {
      'main' => {
        'adapter' => 'exception',
      },
    }
  end

  describe '.establish_connection' do
    it 'succeeds' do
      expect(ActiveRecord::Base.establish_connection(:main)).to be_a(ActiveRecord::ConnectionAdapters::ConnectionPool)
    end
  end

  describe '.connection' do
    it 'raises an exception' do
      ActiveRecord::Base.establish_connection(:main)
      expect { ActiveRecord::Base.connection }.to raise_error(ActiveRecord::ConnectionAdapters::ExceptionAdapter::Error)
    end
  end
end
