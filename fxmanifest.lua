fx_version 'cerulean'
game 'gta5'
lua54 'yes'
author 'YoshiTv' 
description 'Police Armory'
discord 'https://discord.gg/XnYDhzWyuq'

shared_script {
    '@es_extended/imports.lua',
    '@ox_lib/init.lua',
    'shared/**.lua'
}

server_scripts {
    'server/*.lua'
}

client_scripts {
    'client/*.lua'
}
