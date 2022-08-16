#!/bin/bash

# Crear archivo index.html
apt update
echo 'HOLA SOY WALTER STEVEN GAITAN GUTIERREZ' > index.html
tail index.html

echo '<?php
 "El mes actual es: " . date("M");
?>' > mes.php

tail mes.php