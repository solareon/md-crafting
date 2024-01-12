name "md-crafting"
author "mustache_dom"
description " by mustache dom"
fx_version "cerulean"
game "gta5"

client_scripts {
	'client/**.lua',
}

server_scripts {
    'server/**.lua',
	'@oxmysql/lib/MySQL.lua',
	
}

shared_scripts {
    'shared/**.lua',
	 '@ox_lib/init.lua',
	
	
}


lua54 'yes'

dependency '/assetpacks'
