#!/bin/bash
sail exec laravel.service bash -c "./vendor/bin/phpstan analyse ../packages/sales/src/Models/Purchase.php -v"