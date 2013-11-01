name 'production_server'
description 'Production Server'

run_list [
    'recipe[etudev_server_ubuntu]',
    'recipe[etudev_bash_it]',
    'recipe[sqlite]',
    'recipe[etudev_ruby]',
    'recipe[nodejs]',
    'recipe[monit]',
    'recipe[etudev_nginx]',
]


# ATTRIBUTES

myats = {}

myats["etudev_bash_it"] = {
    "users" => ['root']
}

myats["nodejs"] = {
    "install_method" => 'package'
}

default_attributes myats


