# desc "Explaining what the task does"
# task :dynamo_backoffice do
#   # Task goes here
# end
namespace :dynamo_backoffice do
  PLUGIN_ROOT = File.dirname(__FILE__) + '/../'

  desc 'Installs required template files, images and stylesheets'
  task :install do
    #FileUtils.cp_r "#{PLUGIN_ROOT}/public/*", "#{RAILS_ROOT}/public/", :verbose => true
    FileUtils.cp_r "#{PLUGIN_ROOT}/view/layouts/backoffice.html.erb", "#{RAILS_ROOT}/app/views/layouts", :verbose => true
  end
  desc 'Removes the backoffice files'
  task :uninstall do
    FileUtils.rm "#{RAILS_ROOT}/public/javascripts/swfobject.js", :force => true, :verbose => true
    FileUtils.rm "#{RAILS_ROOT}/public/open-flash-chart.swf", :force => true, :verbose => true
  end
end
