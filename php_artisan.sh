#!/bin/bash

php_artisan() {
    command=$1

    echo "Entering the project directory..."
    cd "$RITS_PAY_API" || { echo "Directory not found!"; exit 1; }

    case "$command" in
    cpf)
        echo "call fake cpf document"
        ./vendor/bin/sail artisan tinker --execute="echo (\Faker\Factory::create('pt_BR'))->cpf . PHP_EOL;"
        ;;
    
    pwd)
        echo "Generate password"
        ./vendor/bin/sail artisan tinker --execute="echo str()->password() . PHP_EOL;"
        ;;

    sandbox)
        echo "sandbox..."
        ./vendor/bin/sail artisan sandbox
        ;;

    *)
        echo "Uso: $0 {cpf|sandbox|pwd}"
        ;;
    esac
}
