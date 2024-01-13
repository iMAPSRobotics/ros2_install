case $1 in
    --foxy)
        case $2 in
            --bare)
                locale  # check for UTF-8

                sudo apt-get update && sudo apt-get install locales
                sudo locale-gen en_US en_US.UTF-8
                sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
                export LANG=en_US.UTF-8

                locale  # verify settings

                sudo apt-get install software-properties-common -y
                sudo add-apt-repository universe
                sudo apt-get update && sudo apt-get install curl -y
                sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
                echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
                sudo apt-get update
                sudo apt-get upgrade -y



                sudo apt-get install ros-foxy-ros-base python3-argcomplete -y
                sudo apt-get install ros-dev-tools -y

                echo source /opt/ros/foxy/setup.bash >> ~/.bashrc
                source ~/.bashrc
            ;;
            --desktop)
                locale  # check for UTF-8

                sudo apt-get update && sudo apt-get install locales
                sudo locale-gen en_US en_US.UTF-8
                sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
                export LANG=en_US.UTF-8

                locale  # verify settings

                sudo apt-get install software-properties-common -y
                sudo add-apt-repository universe
                sudo apt-get update && sudo apt-get install curl -y
                sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
                echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
                sudo apt-get update
                sudo apt-get upgrade -y



                sudo apt install ros-foxy-desktop python3-argcomplete -y
                sudo apt-get install ros-dev-tools -y

                echo source /opt/ros/foxy/setup.bash >> ~/.bashrc
                source ~/.bashrc
            ;;
            *)
                echo select --bare for bare bones install or --desktop for destop install
                exit 1
            ;;
            esac
        ;;
    --galactic)
        case $2 in
            --bare)
                locale  # check for UTF-8

                sudo apt-get update && sudo apt-get install locales
                sudo locale-gen en_US en_US.UTF-8
                sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
                export LANG=en_US.UTF-8

                locale  # verify settings

                sudo apt-get install software-properties-common -y
                sudo add-apt-repository universe

                sudo apt-get update && sudo apt-get install curl -y
                sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

                echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
    
                sudo apt-get update && sudo apt-get upgrade -y

                sudo apt-get install ros-galactic-ros-base -y
                sudo apt-get install ros-dev-tools -y

                echo source /opt/ros/galactic/setup.bash >> ~/.bashrc
                source ~/.bashrc
            ;;
            --desktop)
                locale  # check for UTF-8

                sudo apt-get update && sudo apt-get install locales
                sudo locale-gen en_US en_US.UTF-8
                sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
                export LANG=en_US.UTF-8

                locale  # verify settings

                sudo apt-get install software-properties-common -y
                sudo add-apt-repository universe

                sudo apt-get update && sudo apt-get install curl -y
                sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

                echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
    
                sudo apt-get update && sudo apt-get upgrade -y

                sudo apt-get install ros-galactic-desktop -y
                sudo apt-get install ros-dev-tools -y

                echo source /opt/ros/galactic/setup.bash >> ~/.bashrc
                source ~/.bashrc
            ;;
            *)
                echo select --bare for bare bones install or --desktop for destop install
                exit 1
            ;;
            esac
        ;;
        *)
            echo select ros2 distro --foxy or --galactic
        ;;
    esac

sudo adduser $USER dialout


        