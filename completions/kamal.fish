# Base command completion
complete -c kamal -f

# Common options for all commands
complete -c kamal -s v -l verbose -d "Detailed logging"
complete -c kamal -l no-verbose -l skip-verbose -d "No detailed logging"
complete -c kamal -s q -l quiet -d "Minimal logging"
complete -c kamal -l no-quiet -l skip-quiet -d "No minimal logging"
complete -c kamal -l version -d "Run commands against a specific app version" -r
complete -c kamal -s p -l primary -d "Run commands only on primary host instead of all"
complete -c kamal -l no-primary -l skip-primary -d "Do not run commands only on primary host"
complete -c kamal -s h -l hosts -d "Run commands on these hosts instead of all" -r
complete -c kamal -s r -l roles -d "Run commands on these roles instead of all" -r
complete -c kamal -s c -l config-file -d "Path to config file" -r -F
complete -c kamal -s d -l destination -d "Specify destination to be used for config file" -r
complete -c kamal -s H -l skip-hooks -d "Do not run hooks"

# Main Kamal commands
complete -c kamal -f -n __fish_use_subcommand -a accessory -d "Manage accessories (db/redis/search)"
complete -c kamal -f -n __fish_use_subcommand -a app -d "Manage application"
complete -c kamal -f -n __fish_use_subcommand -a audit -d "Show audit log from servers"
complete -c kamal -f -n __fish_use_subcommand -a build -d "Build application image"
complete -c kamal -f -n __fish_use_subcommand -a config -d "Show combined config (including secrets!)"
complete -c kamal -f -n __fish_use_subcommand -a deploy -d "Deploy app to servers"
complete -c kamal -f -n __fish_use_subcommand -a details -d "Show details about all containers"
complete -c kamal -f -n __fish_use_subcommand -a docs -d "Show Kamal configuration documentation"
complete -c kamal -f -n __fish_use_subcommand -a help -d "Describe available commands or one specific command"
complete -c kamal -f -n __fish_use_subcommand -a init -d "Create config stub in config/deploy.yml and secrets stub in .kamal"
complete -c kamal -f -n __fish_use_subcommand -a lock -d "Manage the deploy lock"
complete -c kamal -f -n __fish_use_subcommand -a proxy -d "Manage kamal-proxy"
complete -c kamal -f -n __fish_use_subcommand -a prune -d "Prune old application images and containers"
complete -c kamal -f -n __fish_use_subcommand -a redeploy -d "Deploy app to servers without bootstrapping servers, starting kamal-proxy, pruning, and registry login"
complete -c kamal -f -n __fish_use_subcommand -a registry -d "Login and -out of the image registry"
complete -c kamal -f -n __fish_use_subcommand -a remove -d "Remove kamal-proxy, app, accessories, and registry session from servers"
complete -c kamal -f -n __fish_use_subcommand -a rollback -d "Rollback app to VERSION"
complete -c kamal -f -n __fish_use_subcommand -a secrets -d "Helpers for extracting secrets"
complete -c kamal -f -n __fish_use_subcommand -a server -d "Bootstrap servers with curl and Docker"
complete -c kamal -f -n __fish_use_subcommand -a setup -d "Setup all accessories, push the env, and deploy app to servers"
complete -c kamal -f -n __fish_use_subcommand -a upgrade -d "Upgrade from Kamal 1.x to 2.0"
complete -c kamal -f -n __fish_use_subcommand -a version -d "Show Kamal version"

# Help completions for main commands
complete -c kamal -f -n "__fish_seen_subcommand_from help" -a "accessory app audit build config deploy details docs help init lock proxy prune redeploy registry remove rollback secrets server setup upgrade version"

# Specific command options
complete -c kamal -f -n "__fish_seen_subcommand_from deploy" -s P -l skip-push -d "Skip image build and push"
complete -c kamal -f -n "__fish_seen_subcommand_from redeploy" -s P -l skip-push -d "Skip image build and push"
complete -c kamal -f -n "__fish_seen_subcommand_from setup" -s P -l skip-push -d "Skip image build and push"

complete -c kamal -f -n "__fish_seen_subcommand_from init" -l bundle -d "Add Kamal to the Gemfile and create a bin/kamal binstub"
complete -c kamal -f -n "__fish_seen_subcommand_from init" -l no-bundle -d "Do not add Kamal to the Gemfile"
complete -c kamal -f -n "__fish_seen_subcommand_from init" -l skip-bundle -d "Skip adding Kamal to the Gemfile"

complete -c kamal -f -n "__fish_seen_subcommand_from remove" -s y -l confirmed -d "Proceed without confirmation question"
complete -c kamal -f -n "__fish_seen_subcommand_from remove" -l no-confirmed -l skip-confirmed -d "Do not proceed without confirmation"

complete -c kamal -f -n "__fish_seen_subcommand_from upgrade" -s y -l confirmed -d "Proceed without confirmation question"
complete -c kamal -f -n "__fish_seen_subcommand_from upgrade" -l no-confirmed -l skip-confirmed -d "Do not proceed without confirmation"
complete -c kamal -f -n "__fish_seen_subcommand_from upgrade" -l rolling -d "Upgrade one host at a time"
complete -c kamal -f -n "__fish_seen_subcommand_from upgrade" -l no-rolling -d "Do not upgrade one host at a time"
complete -c kamal -f -n "__fish_seen_subcommand_from upgrade" -l skip-rolling -d "Skip upgrading one host at a time"

# Accessory subcommands
complete -c kamal -f -n "__fish_seen_subcommand_from accessory; and not __fish_seen_subcommand_from boot details exec help logs reboot remove restart start stop upgrade" -a boot -d "Boot new accessory service on host"
complete -c kamal -f -n "__fish_seen_subcommand_from accessory; and not __fish_seen_subcommand_from boot details exec help logs reboot remove restart start stop upgrade" -a details -d "Show details about accessory on host"
complete -c kamal -f -n "__fish_seen_subcommand_from accessory; and not __fish_seen_subcommand_from boot details exec help logs reboot remove restart start stop upgrade" -a exec -d "Execute a custom command on servers within the accessory container"
complete -c kamal -f -n "__fish_seen_subcommand_from accessory; and not __fish_seen_subcommand_from boot details exec help logs reboot remove restart start stop upgrade" -a help -d "Describe subcommands or one specific subcommand"
complete -c kamal -f -n "__fish_seen_subcommand_from accessory; and not __fish_seen_subcommand_from boot details exec help logs reboot remove restart start stop upgrade" -a logs -d "Show log lines from accessory on host"
complete -c kamal -f -n "__fish_seen_subcommand_from accessory; and not __fish_seen_subcommand_from boot details exec help logs reboot remove restart start stop upgrade" -a reboot -d "Reboot existing accessory on host"
complete -c kamal -f -n "__fish_seen_subcommand_from accessory; and not __fish_seen_subcommand_from boot details exec help logs reboot remove restart start stop upgrade" -a remove -d "Remove accessory container, image and data directory"
complete -c kamal -f -n "__fish_seen_subcommand_from accessory; and not __fish_seen_subcommand_from boot details exec help logs reboot remove restart start stop upgrade" -a restart -d "Restart existing accessory container on host"
complete -c kamal -f -n "__fish_seen_subcommand_from accessory; and not __fish_seen_subcommand_from boot details exec help logs reboot remove restart start stop upgrade" -a start -d "Start existing accessory container on host"
complete -c kamal -f -n "__fish_seen_subcommand_from accessory; and not __fish_seen_subcommand_from boot details exec help logs reboot remove restart start stop upgrade" -a stop -d "Stop existing accessory container on host"
complete -c kamal -f -n "__fish_seen_subcommand_from accessory; and not __fish_seen_subcommand_from boot details exec help logs reboot remove restart start stop upgrade" -a upgrade -d "Upgrade accessories from Kamal 1.x to 2.0"

# Accessory help completions
complete -c kamal -f -n "__fish_seen_subcommand_from accessory; and __fish_seen_subcommand_from help" -a "boot details exec help logs reboot remove restart start stop upgrade"

# Accessory name completions for relevant subcommands
complete -c kamal -f -n "__fish_seen_subcommand_from accessory; and __fish_seen_subcommand_from boot details logs reboot remove restart start stop" -a "all db redis search" -d "Accessory name"

# App subcommands
complete -c kamal -f -n "__fish_seen_subcommand_from app; and not __fish_seen_subcommand_from boot containers details exec help images logs remove stale_containers start stop version" -a boot -d "Boot app on servers (or reboot app if already running)"
complete -c kamal -f -n "__fish_seen_subcommand_from app; and not __fish_seen_subcommand_from boot containers details exec help images logs remove stale_containers start stop version" -a containers -d "Show app containers on servers"
complete -c kamal -f -n "__fish_seen_subcommand_from app; and not __fish_seen_subcommand_from boot containers details exec help images logs remove stale_containers start stop version" -a details -d "Show details about app containers"
complete -c kamal -f -n "__fish_seen_subcommand_from app; and not __fish_seen_subcommand_from boot containers details exec help images logs remove stale_containers start stop version" -a exec -d "Execute a custom command on servers within the app container"
complete -c kamal -f -n "__fish_seen_subcommand_from app; and not __fish_seen_subcommand_from boot containers details exec help images logs remove stale_containers start stop version" -a help -d "Describe subcommands or one specific subcommand"
complete -c kamal -f -n "__fish_seen_subcommand_from app; and not __fish_seen_subcommand_from boot containers details exec help images logs remove stale_containers start stop version" -a images -d "Show app images on servers"
complete -c kamal -f -n "__fish_seen_subcommand_from app; and not __fish_seen_subcommand_from boot containers details exec help images logs remove stale_containers start stop version" -a logs -d "Show log lines from app on servers"
complete -c kamal -f -n "__fish_seen_subcommand_from app; and not __fish_seen_subcommand_from boot containers details exec help images logs remove stale_containers start stop version" -a remove -d "Remove app containers and images from servers"
complete -c kamal -f -n "__fish_seen_subcommand_from app; and not __fish_seen_subcommand_from boot containers details exec help images logs remove stale_containers start stop version" -a stale_containers -d "Detect app stale containers"
complete -c kamal -f -n "__fish_seen_subcommand_from app; and not __fish_seen_subcommand_from boot containers details exec help images logs remove stale_containers start stop version" -a start -d "Start existing app container on servers"
complete -c kamal -f -n "__fish_seen_subcommand_from app; and not __fish_seen_subcommand_from boot containers details exec help images logs remove stale_containers start stop version" -a stop -d "Stop app container on servers"
complete -c kamal -f -n "__fish_seen_subcommand_from app; and not __fish_seen_subcommand_from boot containers details exec help images logs remove stale_containers start stop version" -a version -d "Show app version currently running on servers"

# App help completions
complete -c kamal -f -n "__fish_seen_subcommand_from app; and __fish_seen_subcommand_from help" -a "boot containers details exec help images logs remove stale_containers start stop version"

# Build subcommands
complete -c kamal -f -n "__fish_seen_subcommand_from build; and not __fish_seen_subcommand_from create deliver details dev help pull push remove" -a create -d "Create a build setup"
complete -c kamal -f -n "__fish_seen_subcommand_from build; and not __fish_seen_subcommand_from create deliver details dev help pull push remove" -a deliver -d "Build app and push app image to registry then pull image on servers"
complete -c kamal -f -n "__fish_seen_subcommand_from build; and not __fish_seen_subcommand_from create deliver details dev help pull push remove" -a details -d "Show build setup"
complete -c kamal -f -n "__fish_seen_subcommand_from build; and not __fish_seen_subcommand_from create deliver details dev help pull push remove" -a dev -d "Build using the working directory, tag it as dirty, and pull it on servers"
complete -c kamal -f -n "__fish_seen_subcommand_from build; and not __fish_seen_subcommand_from create deliver details dev help pull push remove" -a help -d "Describe subcommands or one specific subcommand"
complete -c kamal -f -n "__fish_seen_subcommand_from build; and not __fish_seen_subcommand_from create deliver details dev help pull push remove" -a pull -d "Pull app image from registry onto servers"
complete -c kamal -f -n "__fish_seen_subcommand_from build; and not __fish_seen_subcommand_from create deliver details dev help pull push remove" -a push -d "Build and push app image to registry"
complete -c kamal -f -n "__fish_seen_subcommand_from build; and not __fish_seen_subcommand_from create deliver details dev help pull push remove" -a remove -d "Remove build setup"

# Build help completions
complete -c kamal -f -n "__fish_seen_subcommand_from build; and __fish_seen_subcommand_from help" -a "create deliver details dev help pull push remove"

# Documentation sections
complete -c kamal -f -n "__fish_seen_subcommand_from docs" -a "boot alias logging env builder registry ssh sshkit role accessory servers proxy"

# Lock subcommands
complete -c kamal -f -n "__fish_seen_subcommand_from lock; and not __fish_seen_subcommand_from acquire help release status" -a acquire -d "Acquire the deploy lock"
complete -c kamal -f -n "__fish_seen_subcommand_from lock; and not __fish_seen_subcommand_from acquire help release status" -a help -d "Describe subcommands or one specific subcommand"
complete -c kamal -f -n "__fish_seen_subcommand_from lock; and not __fish_seen_subcommand_from acquire help release status" -a release -d "Release the deploy lock"
complete -c kamal -f -n "__fish_seen_subcommand_from lock; and not __fish_seen_subcommand_from acquire help release status" -a status -d "Report lock status"

# Lock help completions
complete -c kamal -f -n "__fish_seen_subcommand_from lock; and __fish_seen_subcommand_from help" -a "acquire help release status"

# Lock acquire options
complete -c kamal -f -n "__fish_seen_subcommand_from lock; and __fish_seen_subcommand_from acquire" -s m -l message -d "Lock message" -r

# Proxy subcommands
complete -c kamal -f -n "__fish_seen_subcommand_from proxy; and not __fish_seen_subcommand_from boot boot_config details help logs reboot remove restart start stop" -a boot -d "Boot proxy on servers"
complete -c kamal -f -n "__fish_seen_subcommand_from proxy; and not __fish_seen_subcommand_from boot boot_config details help logs reboot remove restart start stop" -a boot_config -d "Manage kamal-proxy boot configuration"
complete -c kamal -f -n "__fish_seen_subcommand_from proxy; and not __fish_seen_subcommand_from boot boot_config details help logs reboot remove restart start stop" -a details -d "Show details about proxy container from servers"
complete -c kamal -f -n "__fish_seen_subcommand_from proxy; and not __fish_seen_subcommand_from boot boot_config details help logs reboot remove restart start stop" -a help -d "Describe subcommands or one specific subcommand"
complete -c kamal -f -n "__fish_seen_subcommand_from proxy; and not __fish_seen_subcommand_from boot boot_config details help logs reboot remove restart start stop" -a logs -d "Show log lines from proxy on servers"
complete -c kamal -f -n "__fish_seen_subcommand_from proxy; and not __fish_seen_subcommand_from boot boot_config details help logs reboot remove restart start stop" -a reboot -d "Reboot proxy on servers"
complete -c kamal -f -n "__fish_seen_subcommand_from proxy; and not __fish_seen_subcommand_from boot boot_config details help logs reboot remove restart start stop" -a remove -d "Remove proxy container and image from servers"
complete -c kamal -f -n "__fish_seen_subcommand_from proxy; and not __fish_seen_subcommand_from boot boot_config details help logs reboot remove restart start stop" -a restart -d "Restart existing proxy container on servers"
complete -c kamal -f -n "__fish_seen_subcommand_from proxy; and not __fish_seen_subcommand_from boot boot_config details help logs reboot remove restart start stop" -a start -d "Start existing proxy container on servers"
complete -c kamal -f -n "__fish_seen_subcommand_from proxy; and not __fish_seen_subcommand_from boot boot_config details help logs reboot remove restart start stop" -a stop -d "Stop existing proxy container on servers"

# Proxy help completions
complete -c kamal -f -n "__fish_seen_subcommand_from proxy; and __fish_seen_subcommand_from help" -a "boot boot_config details help logs reboot remove restart start stop"

# Proxy boot_config actions
complete -c kamal -f -n "__fish_seen_subcommand_from proxy; and __fish_seen_subcommand_from boot_config" -a "set get reset" -d Action

# Prune subcommands
complete -c kamal -f -n "__fish_seen_subcommand_from prune; and not __fish_seen_subcommand_from all containers help images" -a all -d "Prune unused images and stopped containers"
complete -c kamal -f -n "__fish_seen_subcommand_from prune; and not __fish_seen_subcommand_from all containers help images" -a containers -d "Prune all stopped containers, except the last n (default 5)"
complete -c kamal -f -n "__fish_seen_subcommand_from prune; and not __fish_seen_subcommand_from all containers help images" -a help -d "Describe subcommands or one specific subcommand"
complete -c kamal -f -n "__fish_seen_subcommand_from prune; and not __fish_seen_subcommand_from all containers help images" -a images -d "Prune unused images"

# Prune help completions
complete -c kamal -f -n "__fish_seen_subcommand_from prune; and __fish_seen_subcommand_from help" -a "all containers help images"

# Registry subcommands
complete -c kamal -f -n "__fish_seen_subcommand_from registry; and not __fish_seen_subcommand_from help login logout" -a help -d "Describe subcommands or one specific subcommand"
complete -c kamal -f -n "__fish_seen_subcommand_from registry; and not __fish_seen_subcommand_from help login logout" -a login -d "Log in to registry locally and remotely"
complete -c kamal -f -n "__fish_seen_subcommand_from registry; and not __fish_seen_subcommand_from help login logout" -a logout -d "Log out of registry locally and remotely"

# Registry help completions
complete -c kamal -f -n "__fish_seen_subcommand_from registry; and __fish_seen_subcommand_from help" -a "help login logout"

# Secrets subcommands
complete -c kamal -f -n "__fish_seen_subcommand_from secrets; and not __fish_seen_subcommand_from extract fetch help print" -a extract -d "Extract a single secret from the secrets"
complete -c kamal -f -n "__fish_seen_subcommand_from secrets; and not __fish_seen_subcommand_from extract fetch help print" -a fetch -d "Fetch secrets from a vault"
complete -c kamal -f -n "__fish_seen_subcommand_from secrets; and not __fish_seen_subcommand_from extract fetch help print" -a help -d "Describe subcommands or one specific subcommand"
complete -c kamal -f -n "__fish_seen_subcommand_from secrets; and not __fish_seen_subcommand_from extract fetch help print" -a print -d "Print the secrets (for debugging)"

# Secrets help completions
complete -c kamal -f -n "__fish_seen_subcommand_from secrets; and __fish_seen_subcommand_from help" -a "extract fetch help print"

# Secrets fetch options
complete -c kamal -f -n "__fish_seen_subcommand_from secrets; and __fish_seen_subcommand_from fetch" -s a -l adapter -d "Adapter to use" -r

# Server subcommands
complete -c kamal -f -n "__fish_seen_subcommand_from server; and not __fish_seen_subcommand_from bootstrap exec help" -a bootstrap -d "Set up Docker to run Kamal apps"
complete -c kamal -f -n "__fish_seen_subcommand_from server; and not __fish_seen_subcommand_from bootstrap exec help" -a exec -d "Run a custom command on the server"
complete -c kamal -f -n "__fish_seen_subcommand_from server; and not __fish_seen_subcommand_from bootstrap exec help" -a help -d "Describe subcommands or one specific subcommand"

# Server help completions
complete -c kamal -f -n "__fish_seen_subcommand_from server; and __fish_seen_subcommand_from help" -a "bootstrap exec help"
