# Flutter completion (v1.20.4)

## General options
complete -c flutter -d "Manage your Flutter app development."

complete -c flutter -s h -l help -d "Print usage information."

complete -c flutter -s v -l verbose -d "Noisy logging, including all shell commands executed."

complete -c flutter -s d -l device-id -d "Target device id or name (prefixes allowed)."

complete -c flutter -l version -d "Reports the version of this tool."

complete -c flutter -l suppress-analytics -d "Suppress analytics reporting when this command runs."

complete -c flutter -l packages -d "Path to your '.packages' file."

## Commands
set -l commands analyze assemble attach bash-completion build channel clean config create devices doctor downgrade drive emulators format install logs precache pub run screenshot symbolize test upgrade

complete -c flutter -n "not __fish_seen_subcommand_from $commands" -a "$commands"
complete -c flutter -n "not __fish_seen_subcommand_from $commands help" -a "help"
complete -c flutter -n "__fish_seen_subcommand_from help" -a "$commands"

### flutter create
complete -c flutter -n "__fish_seen_subcommand_from create" -l platforms

complete -c flutter -n "__fish_seen_subcommand_from create" -l pub -d "Run 'flutter pub get' after the project has been created"
complete -c flutter -n "__fish_seen_subcommand_from create" -l no-pub

complete -c flutter -n "__fish_seen_subcommand_from create" -l offline -d "Run it in offline mode"
complete -c flutter -n "__fish_seen_subcommand_from create" -l no-offline

complete -c flutter -n "__fish_seen_subcommand_from create" -l with-driver-test -d "Add a flutter_driver dependency and generate a sample 'flutter drive' test"
complete -c flutter -n "__fish_seen_subcommand_from create" -l no-with-driver-test

complete -c flutter -n "__fish_seen_subcommand_from create" -s t -l template -a "app module package plugin" -d "Specify the type of project to create"

complete -c flutter -n "__fish_seen_subcommand_from create" -s s -l sample -d "Specifies the Flutter code sample to use as the main.dart for an application"
complete -c flutter -n "__fish_seen_subcommand_from create" -l list-samples

complete -c flutter -n "__fish_seen_subcommand_from create" -l overwrite -d "Overwrite existing files"
complete -c flutter -n "__fish_seen_subcommand_from create" -l no-overwrite

complete -c flutter -n "__fish_seen_subcommand_from create" -l description -d "(defaults to 'A new Flutter project.')"

complete -c flutter -n "__fish_seen_subcommand_from create" -l org -d "The organization responsible for your new Flutter project, in reverse domain name notation. (defaults to 'com.exemple')"

complete -c flutter -n "__fish_seen_subcommand_from create" -l project-name

complete -c flutter -n "__fish_seen_subcommand_from create" -s i -l ios-language -d "[objc, swift (default)]"
complete -c flutter -n "__fish_seen_subcommand_from create" -s a -l android-language -d "[objc, swift (default)]"

### flutter doctor
complete -c flutter -n "__fish_seen_subcommand_from doctor" -l android-licenses -d "Run the Android SDK manager tool to accept the SDK's licenses"


### flutter emulators 
complete -c flutter -n "__fish_seen_subcommand_from emulators" -l launch -d "The full or partial ID of the emulator to launch"
complete -c flutter -n "__fish_seen_subcommand_from emulators" -l name -d "Used with flag --create. Specifies a name for the emulator being created"
complete -c flutter -n "__fish_seen_subcommand_from emulators" -l create -d "Creates a new Android emulator based on a Pixel device"