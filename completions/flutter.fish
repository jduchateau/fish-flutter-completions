set -l commands analyse assemble attach bash-completion build channel clean config create devices doctor downgrade drive emulators format install logs precache pub run screenshot symbolize test upgrade

complete -c flutter -f -d "Manage your Flutter app development."

complete -c flutter -s h -l help -d "Print usage information."

complete -c flutter -s v -l verbose -d "Noisy logging, including all shell commands executed."

complete -c flutter -s d -l device-id -d "Target device id or name (prefixes allowed)."

complete -c flutter -l version -d "Reports the version of this tool."

complete -c flutter -l suppress-analytics -d "Suppress analytics reporting when this command runs."

complete -c flutter -l packages -d "Path to your '.packages' file."

complete -c flutter -x -n "not __fish_seen_subcommand_from $commands" -a "$commands"

# TODO completions in subcommands
