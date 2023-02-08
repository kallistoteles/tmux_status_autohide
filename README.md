Auto hide tmux status bar
========================
Plugins that hides the status bar in tmux after a number of seconds, when tmux has started.

Installing
----------
Add plugin to the list of TPM plugins in `.tmux.conf`:

``` tmux
set -g @plugin 'kallistoteles/tmux_status_autohide'
```

Configure
---------
The plugin waits 3 seconds before the status bar is hidden but this can be set to any number of seconds.
To hide the status bar after 2 seconds add the *@status_autohide_delay* option to the config:

``` tmux
set -g @status_autohide_delay "2"
set -g @plugin 'kallistoteles/tmux_status_autohide'
```

Other
-----
To toggle the status bar on for a while, you can bind a key to run the plugin:

``` tmux
bind-key t run-shell ".tmux/plugins/tmux_status_autohide/autohide.tmux"
```

To disable / hide the status bar directly, even if other plugins turns it on, add this plugin last in your plugin list with zero delay time.

``` tmux
set -g @status_autohide_delay "0"
set -g @plugin 'kallistoteles/tmux_status_autohide'
```
