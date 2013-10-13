#
# Configure apache.  The most important part here is setting our 'docroot'
#
include_recipe 'apache2'

# Define app name
app_name = "#{node['app']['name']}"

web_app app_name do
  server_name "www.#{app_name}.local"
  server_aliases %W(#{app_name}.local)
  allow_override 'all'
  docroot "/var/www/#{app_name}/"
end