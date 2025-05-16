<?php

echo "<h1>Environnement LAMP avec Composer</h1>";

echo "<p>PHP version : " . phpversion() . "</p>";

echo "<p>Extensions chargées : " . implode(', ', get_loaded_extensions()) . "</p>";