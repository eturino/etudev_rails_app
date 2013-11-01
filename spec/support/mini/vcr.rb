require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir  = File.join('spec', 'vcr')
  c.hook_into :webmock # or :fakeweb
end
