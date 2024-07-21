FROM althack/ros2:humble-dev 

# Install additional packages

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get -y install --no-install-recommends \
        ros-${ROS_DISTRO}-turtlesim \
        ros-${ROS_DISTRO}-rviz2 \
        ros-${ROS_DISTRO}-rqt-common-plugins \
        ros-${ROS_DISTRO}-turtlebot3-simulations \
        ros-${ROS_DISTRO}-teleop-twist-keyboard \
        nano \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*
ENV DEBIAN_FRONTEND=dialog

# Set up auto-source of workspace for ros user
ARG WORKSPACE
RUN echo "if [ -f ${WORKSPACE}/install/setup.bash ]; then source ${WORKSPACE}/install/setup.bash; fi" >> /home/ros/.bashrc
RUN echo "if [ -f /usr/share/gazebo/setup.bash ]; then source /usr/share/gazebo/setup.bash; fi" >> /home/ros/.bashrc
# TODO: REMOVE WHEN DEVELOPMENT IS READY - this line is reponsible for short prompt (better for screenshots)
RUN echo "export PS1='\e[1;32m\h\e[m:\$ '" >> /home/ros/.bashrc
