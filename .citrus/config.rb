Citrus::Configuration.describe do |c|
  c.build_script = <<-SCRIPT
  echo $0
  env
  gem install bundler
  bundle install
  bundle exec rspec
  SCRIPT
end
