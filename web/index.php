<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Bienvenue dans votre environnement LAMP</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 min-h-screen flex items-center justify-center">
  <div class="bg-white shadow-2xl rounded-xl p-10 max-w-2xl w-full">
    <h1 class="text-4xl font-bold text-center text-blue-600 mb-6">🎉 Bienvenue dans votre environnement LAMP !</h1>
    <p class="text-gray-700 text-center mb-8">
      Votre serveur fonctionne correctement. Voici la configuration actuelle :
    </p>

    <ul class="list-disc list-inside text-gray-800 text-lg space-y-2">
      <li>🖥️ <strong>Linux</strong> via Docker</li>
      <li>🌐 <strong>Apache</strong> (mod_rewrite activé)</li>
      <li>🐘 <strong>PHP version :</strong> <?= phpversion(); ?></li>
      <li>🛢️ <strong>MariaDB</strong></li>
      <li>📂 <strong>Document Root :</strong> <code>/var/www/html</code></li>
    </ul>

    <div class="mt-10 text-center text-sm text-gray-500">
      Docker LAMP © <?= date("Y") ?>
    </div>
  </div>
</body>
</html>
