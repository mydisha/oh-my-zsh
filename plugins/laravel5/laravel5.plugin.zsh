#Laravel 5.3 Basic Command
_laravel53_get_command_list () {
	php artisan --no-ansi | sed "1,/Available commands/d" | awk '/^ +[a-z]+/ { print $1 }'
}

_laravel53 () {
  if [ -f artisan ]; then
    compadd `_laravel53_get_command_list`
  fi
}

compdef _laravel53 artisan
compdef _laravel53 lv

#Alias
alias lv='php artisan'

alias lv5c='php artisan cache:clear'
alias lv5l='php artisan route:list'
alias lv5v='php artisan vendor:publish'

alias lv5m='php artisan migrate'
alias lv5mr='php artisan migrate:rollback'
alias lv5entrust='php artisan entrust:migration'

alias lv5kg='php artisan key:generate'
alias lv5cc='php artisan config:clear'
alias lv5auth='php artisan make:auth'

alias lv5run='php artisan serve'

