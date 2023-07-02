fx_version "cerulean"
lua54 "yes"
game "gta5"

name 'mbt_template'
author "Malibù Tech Team"
version "1.0.0"
description "mbt_template"

dependencies {
	'/server:5848',
	'/onesync'
}

ui_page "web/index.html"

files {
    "web/*.html",
    "web/*.js",
    "web/*.css"
}

shared_scripts {
    "config.lua",
    "modules/module.lua"
}

client_scripts {
    "modules/**/client.lua",
    "bridge/**/client.lua",
    "core/client.lua"
}

server_script {
    "modules/**/server.lua",
    "bridge/**/server.lua",
    "core/server.lua"
}