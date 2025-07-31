#!/bin/bash
sail exec laravel.service bash -c "./vendor/bin/pint -v --test ../packages/sales/src/Models/Subscription.php"