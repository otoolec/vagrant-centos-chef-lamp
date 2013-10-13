# Role for configuring CentOS to be a LAMP stack
name 'centos-lamp'

# Overrides
override_attributes(
    :mysql => {
        :server_root_password   => 'vagrant',
        :server_repl_password   => 'vagrant',
        :server_debian_password => 'vagrant'
    }
)

# Run list
run_list(
    'recipe[yum::yum]',
    'recipe[build-essential]',
    'recipe[vim]',
    'recipe[curl]',
    'recipe[openssl]',
    'recipe[apache2]',
    'recipe[apache2::mod_php5]',
    'recipe[mysql]',
    'recipe[mysql::server]',
    'recipe[php]',
    'recipe[php::module_mysql]',
    'recipe[config::vhosts]',
    'recipe[config::iptables]'

)