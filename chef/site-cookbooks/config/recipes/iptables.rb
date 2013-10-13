#
# Loads firewall rules for centos.
# This is needed because the opscode/apache2 cookbook doesn't handle centos very well right now
#
template "/etc/sysconfig/iptables" do
  # path "/etc/sysconfig/iptables"
  source "iptables.erb"
  owner "root"
  group "root"
  mode 00600
  # notifies :restart, resources(:service => "iptables")
end

execute "service iptables restart" do
  user "root"
  command "service iptables restart"
end