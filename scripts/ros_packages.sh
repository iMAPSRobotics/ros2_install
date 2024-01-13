case $1 in
    --foxy)

        sudo apt-get update && sudo apt-get upgrade -y 
        sudo apt-get install ros-foxy-ros2-control -y
        sudo apt-get install ros-foxy-ros2-controllers -y
        sudo apt-get install ros-foxy-rplidar-ros -y
        sudo apt-get install ros-foxy-slam-toolbox -y
        sudo apt-get install ros-foxy-navigation2 -y
        sudo apt-get install ros-foxy-nav2-bringup -y
        sudo apt-get install ros-foxy-xacro -y
        sudo apt-get install ros-foxy-librealsense* -y
        sudo apt-get install ros-foxy-realsense2-* -y
        sudo apt-get install ros-foxy-imu-tools -y
        sudo apt-get install ros-foxy-tf2-tools -y
        sudo apt-get install ros-foxy-tf-transformations -y
        sudo apt-get install ros-foxy-robot-localization -y
        sudo apt-get install ros-foxy-image-geometry -y
        sudo apt-get install libserial-dev -y
        sudo apt-get install software-properties-common -y
        sudo apt-get install ros-foxy-twist-mux -y
        sudo apt-get install ros-foxy-spatio-temporal-voxel-layer -y
        sudo apt-get install ros-foxy-gazebo-ros2-control -y
        sudo apt-get install ros-foxy-gazebo-ros-pkgs -y
    ;;
    --galactic)
        sudo apt-get update && sudo apt-get upgrade -y 
        sudo apt-get install ros-galactic-ros2-control -y
        sudo apt-get install ros-galactic-ros2-controllers -y
        sudo apt-get install ros-galactic-rplidar-ros -y
        sudo apt-get install ros-galactic-slam-toolbox -y
        sudo apt-get install ros-galactic-navigation2 -y
        sudo apt-get install ros-galactic-nav2-bringup -y
        sudo apt-get install ros-galactic-xacro -y
        sudo apt-get install ros-galactic-librealsense* -y
        sudo apt-get install ros-galactic-realsense2-* -y
        sudo apt-get install ros-galactic-imu-tools -y
        sudo apt-get install ros-galactic-tf2-tools -y
        sudo apt-get install ros-galactic-tf-transformations -y
        sudo apt-get install ros-galactic-robot-localization -y
        sudo apt-get install ros-galactic-image-geometry -y
        sudo apt-get install libserial-dev -y
        sudo apt-get install software-properties-common -y
        sudo apt-get install ros-galactic-twist-mux -y
        sudo apt-get install ros-galactic-spatio-temporal-voxel-layer -y
        sudo apt-get install ros-galactic-gazebo-ros2-control -y
        sudo apt-get install ros-galactic-gazebo-ros-pkgs -y
    ;;
    *)
        echo select ros distro --foxy or --galactic
        exit 1
    ;;
esac

if [ ! -f "/etc/udev/rules.d/99-realsense-libusb.rules" ]; then
    sudo cp 99-realsense-libusb.rules /etc/udev/rules.d/
    sudo udevadm control --reload-rules && udevadm trigger
fi






