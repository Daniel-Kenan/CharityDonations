# Base image
FROM payara/server-full:5.2022.4-jdk17

# Set environment variables
ENV DEPLOY_DIR /opt/payara/deployments

# Copy your application WAR file to the Payara deployment directory
COPY target/CharityDonations.war $DEPLOY_DIR/

# Expose the default HTTP port for Payara
EXPOSE 8080

# Start Payara server
CMD ["start-domain.sh"]

