Citrus::Configuration.describe do |c|
  c.build_script = <<-SCRIPT
  #!/bin/bash
  ps -p $$ | tail -1 | awk '{print $NF}'
  env
  gem install bundler
  bundle install
  bundle exec rspec
  SCRIPT
end
