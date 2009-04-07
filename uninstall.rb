# Uninstall hook code here
puts "Removing files from public directory:"
FileUtils.remove_dir "#{RAILS_ROOT}/public/images/backoffice", :force => true, :verbose => true
FileUtils.rm_f "#{RAILS_ROOT}/public/stylesheets/backoffice.css", :verbose => true
FileUtils.rm_f "#{RAILS_ROOT}/public/stylesheets/backofficemaster.css", :verbose => true
FileUtils.rm "#{RAILS_ROOT}/app/views/layouts/backoffice.html.erb", :force => true, :verbose => true
puts "Plugin uninstalled."


