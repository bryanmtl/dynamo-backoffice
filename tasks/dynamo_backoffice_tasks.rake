# desc "Explaining what the task does"
# task :dynamo_backoffice do
#   # Task goes here
# end
namespace :dynamo_backoffice do
  PLUGIN_ROOT = File.dirname(__FILE__) + '/../'

  desc 'Installs required template files, images and stylesheets'
  task :install do
    puts 'copying files'
    FileUtils.cp_r "#{PLUGIN_ROOT}public/", "#{RAILS_ROOT}", :verbose => true
    FileUtils.cp_r "#{PLUGIN_ROOT}views/layouts/backoffice.html.erb", "#{RAILS_ROOT}/app/views/layouts", :verbose => true
  end
  desc 'Removes the backoffice files'
  task :uninstall do
    FileUtils.remove_dir "#{RAILS_ROOT}/public/images/backoffice", :force => true, :verbose => true
    FileUtils.rm_f "#{RAILS_ROOT}/public/stylesheets/backoffice.css", :verbose => true
    FileUtils.rm_f "#{RAILS_ROOT}/public/stylesheets/backofficemaster.css", :verbose => true
    FileUtils.rm "#{RAILS_ROOT}/app/views/layouts/backoffice.html.erb", :force => true, :verbose => true
  end
end
