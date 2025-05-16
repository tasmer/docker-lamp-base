# LAMP Docker pour o2switch

Environnement de développement LAMP (Apache, MySQL, PHP 8.3) configuré pour reproduire l’hébergement mutualisé de o2switch. Prêt à l’emploi pour Laravel, WordPress ou tout autre projet PHP.

## 🔧 Contenu

- PHP 8.3 avec extensions utiles (pdo_mysql, curl, opcache, sockets, etc.)
- Apache + mod_rewrite activé
- MySQL (MariaDB 10.5)
- Composer intégré
- Configuration `php.ini` personnalisée
- Commandes via `Makefile`

## 🚀 Lancer le projet

```bash
make up         # Démarre les conteneurs
make install    # Exécute 'composer install' dans le conteneur
make bash       # Ouvre un shell dans le conteneur PHP