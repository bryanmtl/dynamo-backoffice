# Install hook code here
puts "Copying files to public directory:"
PLUGIN_ROOT = File.dirname(__FILE__)# + '/../'
FileUtils.cp "#{PLUGIN_ROOT}public/*", "#{RAILS_ROOT}/public/", :verbose => true
FileUtils.cp "#{PLUGIN_ROOT}view/layouts/*", "#{RAILS_ROOT}/app/views/layouts/", :verbose => true
puts "Plugin installed."
puts "Please read README file."