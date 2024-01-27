FROM jenkins/jenkins

## Default Plugins that are recommended by Jenkins during intial installation. 
COPY --chown=jenkins:jenkins default_plugins.txt /usr/share/jenkins/ref/default_plugins.txt
COPY --chown=jenkins:jenkins custom_plugins.txt /usr/share/jenkins/ref/custom_plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/default_plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/custom_plugins.txt


#Uncomment if you want to preload themes into your docker image
# COPY --chown=jenkins:jenkins themes.txt /usr/share/jenkins/ref/themes.txt
#RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/themes.txt

