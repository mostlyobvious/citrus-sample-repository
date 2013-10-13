Citrus::Configuration.describe do |c|
  c.build_script = <<-SCRIPT
  #!/bin/bash
  ps -p $$ | tail -1 | awk '{print $NF}'
  set -e
  set -x
  env
  bundle install --color
  bundle exec rspec --color
  SCRIPT
end
