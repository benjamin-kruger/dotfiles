usage: pipx [-h] [--quiet] [--verbose] [--global] [--version]
            {install,uninject,inject,upgrade,upgrade-all,uninstall,uninstall-all,reinstall,reinstall-all,list,interpreter,run,runpip,ensurepath,environment,completions}
            ...

Install and execute apps from Python packages.

Binaries can either be installed globally into isolated Virtual Environments
or run directly in a temporary Virtual Environment.

Virtual Environment location is /Users/ben-kruger/.local/pipx/venvs.
Symlinks to apps are placed in /Users/ben-kruger/.local/bin.
Symlinks to manual pages are placed in /Users/ben-kruger/.local/share/man.

optional environment variables:
  PIPX_HOME             Overrides default pipx location. Virtual Environments
                        will be installed to $PIPX_HOME/venvs.
  PIPX_BIN_DIR          Overrides location of app installations. Apps are
                        symlinked or copied here.
  PIPX_MAN_DIR          Overrides location of manual pages installations.
                        Manual pages are symlinked or copied here.
  PIPX_DEFAULT_PYTHON   Overrides default python used for commands.
  USE_EMOJI             Overrides emoji behavior. Default value varies based
                        on platform.

options:
  -h, --help            show this help message and exit
  --quiet, -q           Give less output. May be used multiple times
                        corresponding to the ERROR and CRITICAL logging
                        levels. The count maxes out at 2.
  --verbose, -v         Give more output. May be used multiple times
                        corresponding to the INFO, DEBUG and NOTSET logging
                        levels. The count maxes out at 3.
  --global              Perform action globally for all users.
  --version             Print version and exit

subcommands:
  Get help for commands with pipx COMMAND --help

  {install,uninject,inject,upgrade,upgrade-all,uninstall,uninstall-all,reinstall,reinstall-all,list,interpreter,run,runpip,ensurepath,environment,completions}
    install             Install a package
    uninject            Uninstall injected packages from an existing Virtual
                        Environment
    inject              Install packages into an existing Virtual Environment
    upgrade             Upgrade a package
    upgrade-all         Upgrade all packages. Runs `pip install -U <pkgname>`
                        for each package.
    uninstall           Uninstall a package
    uninstall-all       Uninstall all packages
    reinstall           Reinstall a package
    reinstall-all       Reinstall all packages
    list                List installed packages
    interpreter         Interact with interpreters managed by pipx
    run                 Download the latest version of a package to a
                        temporary virtual environment, then run an app from
                        it. Also compatible with local `__pypackages__`
                        directory (experimental).
    runpip              Run pip in an existing pipx-managed Virtual
                        Environment
    ensurepath          Ensure directories necessary for pipx operation are in
                        your PATH environment variable.
    environment         Print a list of environment variables and paths used
                        by pipx.
    completions         Print instructions on enabling shell completions for
                        pipx
