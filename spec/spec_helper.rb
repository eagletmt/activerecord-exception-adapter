RSpec.configure do |config|
  config.expose_dsl_globally = false

  config.filter_run :focus
  config.run_all_when_everything_filtered = true

  config.order = :random
  Kernel.srand config.seed
end
