# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/matt/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export PS1="%d %% "


alias refresh="xrandr --output DP-2 --off; xrandr --output DP-2 --auto;"
alias pac="sudo pacman -S"
alias remove="sudo pacman -R"
# alias upgrade="sudo pacman -Syu"
alias upgrade="yaourt -Syua --noconfirm"
alias update="sudo pacman -Sy"
alias aur="yaourt -S"
alias touchpad="syndaemon -i 0.3 -K -R -d"
alias minecraftServer="cd ~/Documents/Minecraft\ Server/ && java -Xmx1024M -Xms1024M -jar minecraft_server.1.10.jar nogui"
alias setwallpaper="feh --bg-scale"
alias hdd="sshfs pi@58.107.7.232:/media/pi/BACKUP\ HD/ /home/matt/SSH"
alias pi="ssh pi@58.107.7.232"
alias ls="ls --color=auto"
alias la="ls -a --color=auto"

# ROS
indigo() {
   source /opt/ros/indigo/setup.bash
     export PYTHONPATH=/opt/ros/indigo/lib/python2.7/site-packages:$PYTHONPATH
       export PKG_CONFIG_PATH="/opt/ros/indigo/lib/pkgconfig:$PKG_CONFIG_PATH"
         # Optionally, you can set:
           #export ROS_PACKAGE_PATH=/path/to/your/package/path:$ROS_PACKAGE_PATH

             # Useful aliases
               alias catkin_make="catkin_make -DPYTHON_EXECUTABLE=/usr/bin/python2 -DPYTHON_INCLUDE_DIR=/usr/include/python2.7 -DPYTHON_LIBRARY=/usr/lib/libpython2.7.so"

                 # If you use Gazebo:
                   #source /usr/share/gazebo/setup.sh
                   }
