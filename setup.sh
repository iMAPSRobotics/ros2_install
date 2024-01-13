check () {
    
    if [ -d "/opt/ros/foxy" ]; then
        echo "ros2 foxy already exist. Do you want to uninstall (y/n)"
        read choice
        case $choice in
            y|yes|Y)
                sudo apt-get remove ~nros-foxy-* -y && sudo apt-get autoremove -y

                sudo rm /etc/apt/sources.list.d/ros2.list
                sudo apt-get update
                sudo apt-get autoremove -y
                # Consider upgrading for packages previously shadowed.
                sudo apt-get upgrade -y
            ;;
            *)
                exit 1
            ;;
        esac
    elif [ -d "/opt/ros/galactic" ]; then
        echo "ros2 galactic already exist. Do you want to uninstall (y/n)"
        read choice

        case $choice in
            y|yes|Y)
                sudo apt-get remove ~nros-galactic-* -y && sudo apt-get autoremove -y

                sudo rm /etc/apt/sources.list.d/ros2.list
                sudo apt-get update
                sudo apt-get autoremove -y
                # Consider upgrading for packages previously shadowed.
                sudo apt-get upgrade -y
            ;;
            *)
                exit 1
            ;;
        esac
    fi

}

DIR="$( cd "$( dirname "$0" )" && pwd )"

case $1 in
    --foxy)    
        case $2 in
            --nano)
                check
                $DIR/scripts/installros.sh --foxy --bare
                $DIR/scripts/ros_packages.sh --foxy
                $DIR/scripts/pythonDependencies.sh
                source /opt/ros/foxy/setup.bash
            ;;
            --desktop)
                check
                $DIR/scripts/installros.sh --foxy --desktop
                $DIR/scripts/ros_packages.sh --foxy
                $DIR/scripts/pythonDependencies.sh
                source /opt/ros/foxy/setup.bash
            ;;     
            *)
                printf "Use --nano for installing on Jetson computers or --desktop for installing on a pc for simulation\n\n"
            ;;
        esac
        $DIR/scripts/install_arduino_cli.sh
        printf "A restart is required.\n\nDo you want to restart (y/n)"
        read restart
        case $restart in
            y|Y|yes)
                sudo reboot
            ;;
            *)
                exit 1
            ;;
        esac
    ;;
    --galactic)
        case $2 in
            --nano)
                check
                $DIR/scripts/installros.sh --galactic --bare
                $DIR/scripts/ros_packages.sh --galactic
                $DIR/scripts/pythonDependencies.sh
                source /opt/ros/galactic/setup.bash
            ;;
            --desktop)
                check
                $DIR/scripts/installros.sh --galactic --desktop
                $DIR/scripts/ros_packages.sh --galactic
                $DIR/scripts/pythonDependencies.sh
                source /opt/ros/galactic/setup.bash
            
            ;;     
            *)
                printf "Use --nano for installing on Jetson computers or --desktop for installing on a pc for simulation\n\n"
            ;;
        esac
        $DIR/scripts/install_arduino_cli.sh
        printf "A restart is required.\n\nDo you want to restart (y/n)"
        read restart
        case $restart in
            y|Y|yes)
                sudo reboot
            ;;
            *)
                exit 1
            ;;
        esac
    ;;
    
    *)
        printf "\nThis script is used to install ROS2 and all the required packages for operating the EtherBot
Use --nano for installing on Jetson computers or --desktop for installing on a pc for simulation\n\n
example: $DIR/setup --galactic --desktop\n\n"
    ;;

esac
