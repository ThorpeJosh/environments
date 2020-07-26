# As user jenkins to backup volume "jenkins_home"
cd
mkdir jenkins_home_backup
docker run --rm -v jenkins_home:/jenkins_home -v /home/jenkins/jenkins_home_backup:/backup ubuntu tar cvjf /backup/jenkins_home.tar.bz2 /jenkins_home

# To exctract
# In an ubuntu docker image with same mounts as above
cd /
tar -xvjf /backup/jenkins_home.tar.bz2
