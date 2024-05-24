# demo-debezium-pulsar

To access to pulsar-manager console. Comment `infinity` and uncomment the `init.sh` 
to set the password in pulsar manager for the FIRST time.
After that revert the change.
Please DO NOT let this run multiple times otherwise multiple admins are created

    #entrypoint: ["sh", "-c", "sleep infinity"]
    entrypoint: ["sh", "/init.sh"] # Uncomment to set the username and password to admin:apachepulsar, Comment after its ran first time


Login for pulsar-manager is at `http://localhost:9527/`

Username: `admin`

Password: `apachepulsar`

Create a new environment with the following confio

Environment name: `local`

Service URL: `http://pulsar:8080`

Bookie URL: `http://pulsar:6650`

![pulsar-manager-config.png](pics/pulsar-manager-config.png)

More instruction to configure can be found here
https://github.com/apache/pulsar-manager/tree/master?tab=readme-ov-file#configure-environment
