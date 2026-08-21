ARG BASE_IMG=osrf/ros:jazzy-desktop

FROM ${BASE_IMG}

ENV DEBIAN_FRONTEND=noninteractive

# System and ROS dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    python3-pip \
    python3-colcon-common-extensions \
    python3-rosdep \
    ros-jazzy-rviz2 \
    ros-jazzy-rqt \
    ros-jazzy-xacro \
    ros-jazzy-joint-state-publisher \
    ros-jazzy-joint-state-publisher-gui \
    && rm -rf /var/lib/apt/lists/*

# Create the workspace directory
RUN mkdir -p <abs/path/to/the/repo>

# Source ROS automatically
RUN echo "source /opt/ros/$ROS_DISTRO/setup.bash" >> /root/.bashrc

# Go to the work directory
WORKDIR <abs/path/to/the/repo>

CMD ["/bin/bash"]