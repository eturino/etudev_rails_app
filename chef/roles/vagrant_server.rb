name 'vagrant_server'
description 'Vagrant Server'

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
    "users" => ['vagrant', 'root']
}

myats["nodejs"] = {
    "install_method" => 'package'
}

default_attributes myats


