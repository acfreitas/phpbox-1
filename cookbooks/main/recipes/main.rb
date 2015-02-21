include_recipe 'apt'
include_recipe 'openssl'

# Mysql
node.set['mysql'] = {
  server_root_password: '',
  server_repl_password: '',
  server_debian_password: '',
  allow_remote_root: true,
  bind_address: '*',

  client: {
    packages: ['libmysqlclient-dev']
  }
}

include_recipe 'mysql::server'
include_recipe 'mysql::client'

# PHP
node.set['php'] = {
  install_method: "source",
  version: "5.6.6"
}

include_recipe 'php::source'
include_recipe 'php::module_mysql'
include_recipe 'php::module_curl'

# Postgres
node.set['postgresql'] = {
  password: {
    postgres: ''
  },
  pg_hba: [
    {
      type: 'local',
      db: 'all',
      user: 'postgres',
      method: 'trust'
    }
  ]
}

include_recipe 'postgresql::server'

#Install Composer global
execute "curl -sS https://getcomposer.org/installer | php"
execute "mv composer.phar /usr/bin/composer"
