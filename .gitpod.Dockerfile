FROM gitpod/workspace-full

# This env var is used to force the 
# rebuild of the Gitpod environment when needed
ENV TRIGGER_REBUILD 0

# Gets rid of extra output in the cli
ENV GIT_DISCOVERY_ACROSS_FILESYSTEM=true

USER root

RUN apt-get update && \
  apt-get install -y wget git tree ssh nano sudo nmap man tmux jq curl uuid-runtime && \
  apt-get clean && \
  rm -rf /var/cache/apt/* && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /tmp/*

# Copy exercices content into the image
COPY --chown=gitpod content/ /home/gitpod/linux-exercises

# Set up the exercices
# Set lock permissions for exercise 6
# Copy solutions of exercises in hidden spots
RUN chown root:root /home/gitpod/linux-exercises/exercise_6/the_locked_file && \
  chmod 000 /home/gitpod/linux-exercises/exercise_6/the_locked_file && \
  mkdir /bin/abstergo && \
  mkdir /bin/glados && \
  mkdir /bin/piper && \
  mkdir /bin/blizzard && \
  mkdir /bin/acme && \
  mv /home/gitpod/linux-exercises/solutions/exercise_2 /bin/glados && \
  mv /home/gitpod/linux-exercises/solutions/exercise_3 /bin/acme && \
  mv /home/gitpod/linux-exercises/solutions/exercise_4 /bin/blizzard && \
  mv /home/gitpod/linux-exercises/solutions/exercise_5 /bin/piper && \
  mv /home/gitpod/linux-exercises/solutions/exercise_7 /bin/abstergo && \
  rm -rf /home/gitpod/linux-exercises/solutions

USER gitpod
