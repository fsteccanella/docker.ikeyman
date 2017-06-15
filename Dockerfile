FROM ibmjava:latest
RUN apt update && \
	apt upgrade -y && \
	apt install -y libxext6 libxrender1 libxtst6 libxi6 libxft2 && \
	rm -rf /var/lib/apt/lists/*

RUN echo "security.provider.10=com.ibm.security.cmskeystore.CMSProvider" >> /opt/ibm/java/jre/lib/security/java.security

ENTRYPOINT /opt/ibm/java/jre/bin/ikeyman	

