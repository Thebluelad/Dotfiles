#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /opt/ros/indigo/setup.bash
source ~/catkin_ws/devel/setup.bash

PS1='[\u@\h \W]\$ '
# >>>>BEGIN ADDED BY CNCHI INSTALLER<<<< #
BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/vim
set -o vi
# >>>>>END ADDED BY CNCHI INSTALLER<<<<< #

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

alias refresh="xrandr --output DP-2 --off; xrandr --output DP-2 --auto;"
alias pac="pacaur -S"
alias remove="sudo pacman -R"
alias upgrade="pacaur -Syu --noconfirm --ignore poco"
alias update="sudo pacman -Sy"
alias aur="pacaur -S"
alias touchpad="syndaemon -i 0.3 -K -R -d"
alias minecraftServer="cd ~/Documents/Minecraft\ Server/ && java -Xmx1024M -Xms1024M -jar minecraft_server.1.10.jar nogui"
alias setwallpaper="feh --bg-scale"
alias hdd="sshfs pi@58.107.7.232:/media/pi/BACKUP\ HD/ /home/matt/SSH"
alias pi="ssh pi@58.107.7.232"
alias ls="ls --color=auto"
alias la="ls -a --color=auto"
alias 355="cd /srv/http/"
alias 355drive="cd ~/GoogleDrive/ENB354\ Group\ 2/WebVis/WebVisWebsite/"
alias svim="sudo -E vim"
alias listen="cd ~/catkin_ws && catkin_make && ./devel/lib/beginner_tutorials/listener"
alias emulate="roslaunch enb355_emulator emulator.launch"
alias sql="mysql -u root -p123"
alias stream="mjpg_streamer --input \"/home/matt/Downloads/mjpg-streamer/mjpg-streamer/mjpg-streamer-experimental/input_file.so -f /home/matt/catkin_ws/SavedImages/\" -o \"/home/matt/Downloads/mjpg-streamer/mjpg-streamer/mjpg-streamer-experimental/output_http.so -w /home/matt/Downloads/mjpg-streamer/mjpg-streamer/mjpg-streamer-experimental/www -p 8081\""
alias clean355="sudo rm /srv/http/SavedImages/* && rm ~/catkin_ws/SavedImages/*"
