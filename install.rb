# Install hook code here
puts "Copying files to public directory:"
PLUGIN_ROOT = File.dirname(__FILE__)# + '/../'
FileUtils.cp_r "#{PLUGIN_ROOT}/public/*", "#{RAILS_ROOT}/public/", :verbose => true
FileUtils.cp_r "#{PLUGIN_ROOT}/view/layouts/*", "#{RAILS_ROOT}/app/views/layouts/", :verbose => true
puts "Plugin installed."
puts "Please read README file."