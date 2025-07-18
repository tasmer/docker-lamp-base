#!/bin/bash

# Activer tous les .conf dans /etc/apache2/sites-available
for file in /etc/apache2/sites-available/*.conf; do
  filename=$(basename "$file")
  site="${filename%.conf}"

  if [ ! -e "/etc/apache2/sites-enabled/$site.conf" ]; then
    echo "Activating site: $site"
    a2ensite "$site"
  fi
done

# Lancer Apache en mode foreground
apache2-foreground
