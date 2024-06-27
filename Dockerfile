FROM ubuntu:20.04

# Update local package index
RUN apt-get update

# Install necessary packages
RUN apt-get install -y jq gawk apt-transport-https wget gnupg2 curl

# Add Cloud Foundry CLI repository key and list
RUN wget -q -O - https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key | apt-key add -
RUN echo "deb https://packages.cloudfoundry.org/debian stable main" | tee /etc/apt/sources.list.d/cloudfoundry-cli.list

# Update local package index for cf to be included
RUN apt-get update

# Install Cloud Foundry CLI
RUN apt-get install -y cf-cli

# Install Node.js (LTS version, which includes npm)
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && \
    apt-get install -y nodejs

# Ensure npm is available in the PATH
ENV PATH /usr/local/bin:$PATH

# Verify Node.js and npm installation
RUN node -v && npm -v

# Clean npm cache and install mbt globally
RUN npm cache clean --force && npm install -g mbt

# Clean up APT when done
RUN rm -rf /var/lib/apt/lists/*

# Create volume where the elmo-env.list will be created
VOLUME [ "/var/script" ]
