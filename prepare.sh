. /build/config.sh

apt-get update -y

BUILD_PACKAGES="wget unzip python python-pip"

apt-get install $minimal_apt_get_args $BUILD_PACKAGES -y

cd /
wget https://storage.googleapis.com/appengine-sdks/featured/google_appengine_1.9.35.zip
unzip google_appengine_1.9.35.zip -d /usr/local/src && rm google_appengine_1.9.35.zip
