#!/usr/bin/env bash

# This var is for dev reasons
if [[ -z "$CACHE_IGNORE" ]]; then

# Go to the cache volume
cd /bungeecordcache/

# This runs only one time
if [[ ! -a "copied.txt" ]]; then

# Copy the serverfiles to the volume
cp -R /bungeecordfiles /usr/src/

# Get the server jar file from paper-mc
cd /usr/src/bungeecordfiles/
wget -O Waterfall.jar https://papermc.io/ci/job/Waterfall/lastSuccessfulBuild/artifact/Waterfall-Proxy/bootstrap/target/Waterfall.jar

# This saves that this is already done
cd /bungeecordcache/
touch copied.txt
fi
else

# Copy the serverfiles to the volume
cp -R /bungeecordfiles /usr/src/

# Get the server jar file from AlexProgrammerDE
cd /usr/src/bungeecordfiles/
wget -O Waterfall.jar https://papermc.io/ci/job/Waterfall/lastSuccessfulBuild/artifact/Waterfall-Proxy/bootstrap/target/Waterfall.jar
fi

# Make sure you are in the file volume
cd /usr/src/bungeecordfiles/

# Do that forever
while : ; do

# Add double RAM
if [[ -z "$DOUBLE_RAM" ]]; then

# Start any jar file with regular RAM
java -Xms1G -Xmx1G -jar *.jar
else

# Start any jar file with double RAM
java -Xms2G -Xmx2G -jar *.jar
fi

# Don´t overload the server if the start fails 
sleep 10
done
