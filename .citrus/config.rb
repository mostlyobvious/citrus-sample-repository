Citrus::Configuration.describe do |c|
  c.build_script = <<-SCRIPT
  env
  
  gem install bundler
  bundle install
  bundle exec rspec
  SCRIPT
end
