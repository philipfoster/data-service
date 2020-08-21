FROM registry.redhat.io/ubi8
EXPOSE 9000
RUN dnf install -y java-1.8.0-openjdk-headless procps-ng

# TODO: Cleanup warnings about kernel UDP buffer sizes being too small
# 1.5 MB
#RUN echo "net.core.wmem_max = 1572864" >> /etc/sysctl.conf
#RUN /sbin/sysctl --write net.core.wmem_max=1572864

# 25 MB
#RUN echo "net.core.rmem_max = 26214400" >> /etc/sysctl.conf
#RUN echo `sysctl -a`
#RUN /sbin/sysctl -w net.core.rmem_max=26214400
#RUN grubby --update-kernel=/boot/vmlinuz-$(uname -r) --args="net.core.rmem_max=26214400"


RUN useradd app
ENV HOME /home/app
#ENV HOME /home/app
RUN mkdir -p $HOME
RUN mkdir $HOME/target
WORKDIR $HOME
RUN echo $HOME

# Copy our settings into
COPY target/data-service-0.0.1-SNAPSHOT.jar app.jar
COPY settings/application.properties application.properties

RUN chown -R app:app $HOME
RUN chmod -R 777 $HOME
USER app

RUN pwd
RUN ls -al $HOME
RUN whoami


ENTRYPOINT ["java", "-jar", "./app.jar", "--spring.config.location=./application.properties"].