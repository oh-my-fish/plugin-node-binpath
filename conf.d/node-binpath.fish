# https://github.com/PatrickF1/fzf.fish/blob/main/conf.d/fzf.fish#L1
if not status is-interactive && test "$CI" != true
    exit
end

_node_binpath_cwd $PWD

function _node_binpath_uninstall --on-event _node_binpath_uninstall
  functions -e _node_binpath_cwd
  set -e __node_binpath
end
