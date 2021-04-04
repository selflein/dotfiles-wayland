export ZDOTDIR=~/.config/zsh
export _JAVA_AWT_WM_NONREPARENTING=1
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export QT_SCALE_FACTOR=1
export GDK_SCALE=1
export QT_QPA_PLATFORMTHEME=qt5ct

export XDG_CURRENT_DESKTOP=sway

export GDK_BACKEND=wayland
export CLUTTER_BACKEND=wayland

export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export QT_QPA_PLATFORM=wayland
# export QT_WAYLAND_FORCE_DPI=physical

export ECORE_EVAS_ENGINE=wayland_egl
export ELM_ENGINE=wayland_egl
export SDL_VIDEODRIVER=wayland
export MOZ_ENABLE_WAYLAND=1
wmname LG3D

if [ -n "$DESKTOP_SESSION" ];then
    export $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)
fi


# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
