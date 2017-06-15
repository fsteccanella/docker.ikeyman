FROM ibmjava:latest
RUN apt update && \
	apt upgrade -y && \
	apt install -y libxext6 libxrender1 libxtst6 libxi6 libxft2 && \
	rm -rf /var/lib/apt/lists/*
ENTRYPOINT /opt/ibm/java/jre/bin/ikeyman	

