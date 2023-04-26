# Base options
set -gx COLORTERM truecolor
set -Ux EDITOR nvim
set -Ux VISUAL nvim
set -gx LANG nl_NL.UTF-8  
set -gx LC_ALL nl_NL.UTF-8
set -gx GOPATH $HOME/go
set -x PATH $GOPATH/bin $HOME/.composer/vendor/bin $HOME/Library/Python/3.7/bin $HOME/.local/bin $PATH

# Title options
set -g theme_title_display_process yes
set -g theme_title_display_path yes
set -g theme_title_display_user yes
set -g theme_title_use_abbreviated_path yes

# Prompt options 
set -g theme_git_worktree_support no
set -g theme_show_exit_status yes
set -g theme_display_cmd_duration yes
set -g theme_nerd_fonts yes
set -g theme_display_git yes
set -g theme_display_git_dirty yes
set -g theme_display_git_untracked yes
set -g theme_display_git_ahead_verbose yes
set -g theme_display_git_dirty_verbose yes
set -g theme_display_git_master_branch yes
set -g theme_display_date yes

# Custom FzF configuration
fzf_configure_bindings --directory=\cf --git_status=\cg
set fzf_fd_opts --hidden

bind -M insert \cg forget

# Fisher tmux plugin update
set -Ux fish_tmux_config $HOME/.config/tmux/tmux.conf
set -Ux fish_tmux_autostart false

# Setup Zoxide
zoxide init fish | source

# Abbriviations
abbr -a cd z
abbr -a -- dc docker-compose
abbr -a -- dcb 'docker-compose build'
abbr -a -- dcd 'docker-compose down'
abbr -a -- dcl 'docker-compose logs'
abbr -a -- dclf 'docker-compose logs -f'
abbr -a -- dcp 'docker-compose pull'
abbr -a -- dcr 'docker-compose run --rm'
abbr -a -- dcu 'docker-compose up'
abbr -a -- dcub 'docker-compose up --build'
abbr -a -- dcud 'docker-compose up -d'
abbr -a -- dcudb 'docker-compose up -d --build'
abbr -a -- clean clear
abbr -a -- exi exit
abbr -a -- exti exit
abbr -a -- hotp htop
abbr -a -- tx tmuxinator
abbr -a -- txd 'tmuxinator start development' # start tmux generic development profile
abbr -a -- txm 'tmuxinator start mage' # start tmux magento profile
abbr -a -- vi nvim
abbr -a -- vim nvim