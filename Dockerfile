ARG BASE_IMG=ros:lyrical-ros-base

FROM ${BASE_IMG}

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ="Europe/Moscow"

# Timezone
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone

# System and ROS dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        tmux \
        vim \
        nano \
        wget \
        curl \
        pkg-config \
        llvm \
        unzip \
        joystick \
        python3-dev \
        python3-venv \
        psmisc \
        ros-$ROS_DISTRO-ros-base \
        ros-$ROS_DISTRO-moveit \
        ros-$ROS_DISTRO-moveit-task-constructor-core \
        ros-$ROS_DISTRO-moveit-task-constructor-msgs \
        ros-$ROS_DISTRO-pymoveit2 \
        ros-$ROS_DISTRO-controller-manager \
        ros-$ROS_DISTRO-forward-command-controller \
        ros-$ROS_DISTRO-joint-state-broadcaster \
        ros-$ROS_DISTRO-joint-state-publisher \
        ros-$ROS_DISTRO-joint-state-publisher-gui \
        ros-$ROS_DISTRO-joint-trajectory-controller \
        ros-$ROS_DISTRO-joy \
        ros-$ROS_DISTRO-position-controllers \
        ros-$ROS_DISTRO-ros2-control \
        ros-$ROS_DISTRO-ros2-controllers \
        ros-$ROS_DISTRO-ros2controlcli \
        ros-$ROS_DISTRO-rqt-* \
        ros-$ROS_DISTRO-velocity-controllers \
        ros-$ROS_DISTRO-gripper-controllers \
        ros-$ROS_DISTRO-urdf-tutorial \
    && rm -rf /var/lib/apt/lists/*

# Python virtual environment
RUN python3 -m venv /opt/venv

ENV PATH="/opt/venv/bin:$PATH"

# Python dependencies
RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir \
        numpy \
        scipy \
        pyyaml \
        pin \
        rosdep \
        colcon-common-extensions \
        rospkg

# Initialize rosdep
RUN rosdep update --rosdistro=$ROS_DISTRO || true

# Source ROS automatically
RUN echo "source /opt/ros/$ROS_DISTRO/setup.bash" >> /root/.bashrc

# tmux configuration
RUN cat > /root/.tmux.conf <<'EOF'
set -g mouse on
set -g history-limit 50000
set -g default-terminal "screen-256color"
EOF