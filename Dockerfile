FROM rockylinux:8 
RUN dnf update -y
RUN dnf install -y net-tools unzip bind-utils nmap traceroute telnet
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install 
CMD echo "starting swiss knife" && tail -f /dev/null 