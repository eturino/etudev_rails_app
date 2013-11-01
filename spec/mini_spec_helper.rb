ENV["RAILS_ENV"] ||= 'test'

# require for mini spec helper
Dir[File.join(__dir__, "support/mini/**/*.rb")].each { |f| require f }

#silence the standard output and error
RSpec.configure do |config|

  config.before(:all) do
    # Redirect stderr and stdout
    $logger = Logger.new(File.new(File.join(__dir__, 'rspec_log.txt'), 'w'))
  end

  config.treat_symbols_as_metadata_keys_with_true_values = true

  # to exclude marked as slow (see http://railscasts.com/episodes/413-fast-tests?view=asciicast)
  config.filter_run_excluding :slow unless ENV["SLOW_SPECS"]
  config.filter_run_excluding :huge unless ENV["HUGE_SPECS"]
end