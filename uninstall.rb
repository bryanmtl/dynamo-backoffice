# Uninstall hook code here
puts "Removing files from public directory:"
FileUtils.rm "#{RAILS_ROOT}/public/stylesheets/backoffice*"
FileUtils.rm "#{RAILS_ROOT}/public/images/backoffice/*"
FileUtils.rm "#{RAILS_ROOT}/app/views/layout/backoffice*"
puts "Plugin uninstalled."


