#!/bin/bash

# -*- ENCODING: UTF-8 -*-
read -r -p "Would you like to clen deps? (y/n): " answer

case $answer in [yY][eE][sS]|[yY])
	mix deps.clean --all; mix do deps.get, compile;
esac
mix ecto.create && mix ecto.migrate
npm install
mv web/templates/page/mailer.html.eex.html web/templates/page/mailer.html.eex
mv web/templates/layout/app.html.eex.html web/templates/layout/app.html.eex
exit
