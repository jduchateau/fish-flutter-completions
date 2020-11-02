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

### flutter run
complete -c flutter -n "__fish_seen_subcommand_from run" -l debug
complete -c flutter -n "__fish_seen_subcommand_from run" -l profile
complete -c flutter -n "__fish_seen_subcommand_from run" -l release
complete -c flutter -n "__fish_seen_subcommand_from run" -a --dart-define= -d "Additional key-value pairs that will be available as constants from the String.fromEnvironment, bool.fromEnvironment, int.fromEnvironment, and double.fromEnvironment constructors."
complete -c flutter -n "__fish_seen_subcommand_from run" -l flavor -d "Build a custom app flavor as defined by platform-specific build setup."
complete -c flutter -n "__fish_seen_subcommand_from run" -l trace-stratup -d "Trace application startup, then exit, saving the trace to a file."
complete -c flutter -n "__fish_seen_subcommand_from run" -l verbose-system-logs
complete -c flutter -n "__fish_seen_subcommand_from run" -l cache-sksl
complete -c flutter -n "__fish_seen_subcommand_from run" -l dump-skp-on-shader-compilation
complete -c flutter -n "__fish_seen_subcommand_from run" -l purge-persistent-cache
complete -c flutter -n "__fish_seen_subcommand_from run" -l route -d "Which route to load when running the app."
complete -c flutter -n "__fish_seen_subcommand_from run" -a --vmservice-out-file= -d "A file to write the attached vmservice uri to after an application is started."
complete -c flutter -n "__fish_seen_subcommand_from run" -l target -s t -d "The main entry-point file of the application, as run on the device."
complete -c flutter -n "__fish_seen_subcommand_from run" -l observatory-port
complete -c flutter -n "__fish_seen_subcommand_from run" -l device-vmservice-port
complete -c flutter -n "__fish_seen_subcommand_from run" -l host-vmservice-port
complete -c flutter -n "__fish_seen_subcommand_from run" -l pub
complete -c flutter -n "__fish_seen_subcommand_from run" -l no-pub
complete -c flutter -n "__fish_seen_subcommand_from run" -l track-widget-creation
complete -c flutter -n "__fish_seen_subcommand_from run" -l no-track-widget-creation
complete -c flutter -n "__fish_seen_subcommand_from run" -l null-assertions
complete -c flutter -n "__fish_seen_subcommand_from run" -l no-null-assertions
complete -c flutter -n "__fish_seen_subcommand_from run" -a device-user= -d "Identifier number for a user or work profile on Android only. Run `adb shell pm list users` for available identifiers."
complete -c flutter -n "__fish_seen_subcommand_from run" -a device-timeout=10 -d "Time in seconds to wait for devices to attach. Longer timeouts may be necessary for networked devices."
complete -c flutter -n "__fish_seen_subcommand_from run" -l start-paused
complete -c flutter -n "__fish_seen_subcommand_from run" -l enable-software-rendering
complete -c flutter -n "__fish_seen_subcommand_from run" -l skia-deterministic-rendering
complete -c flutter -n "__fish_seen_subcommand_from run" -l trace-skia
complete -c flutter -n "__fish_seen_subcommand_from run" -l endless-trace-buffer
complete -c flutter -n "__fish_seen_subcommand_from run" -l trace-systrace

complete -c flutter -n "__fish_seen_subcommand_from run" -l await-first-frame-when-tracing
complete -c flutter -n "__fish_seen_subcommand_from run" -l no-await-first-frame-when-tracing

complete -c flutter -n "__fish_seen_subcommand_from run" -l use-test-fonts
complete -c flutter -n "__fish_seen_subcommand_from run" -l no-use-test-fonts

complete -c flutter -n "__fish_seen_subcommand_from run" -l build
complete -c flutter -n "__fish_seen_subcommand_from run" -l no-build

complete -c flutter -n "__fish_seen_subcommand_from run" -l hot
complete -c flutter -n "__fish_seen_subcommand_from run" -l no-hot
complete -c flutter -n "__fish_seen_subcommand_from run" -l pid-file
complete -c flutter -n "__fish_seen_subcommand_from run" -l fast-start
complete -c flutter -n "__fish_seen_subcommand_from run" -l no-fast-start
