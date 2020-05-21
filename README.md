# commandbox-ssl-cfhttp-repro
Repro case for issue with CommandBox, SSL, and CFHTTP

## Issue
Enabling SSL results in some CFHTTP requests to https domains to fail. Here's the related ticket: [CommandBox-1173](https://ortussolutions.atlassian.net/browse/COMMANDBOX-1173), which contains information about the Runwar flag (`--ssl-eccdisable=false`) being used in the examples below.

## To Reproduce

This repo contains 20 different server configurations, all of which result in different behavior with regard to the SSL cert and CFHTTP requests. You can find their names and configurations in the *testing-matrix.csv* file. They're worth exploring.

To reproduce the initial error, use the following steps (using CommandBox 5.0.1):

- Start up the server using CommandBox: `server start`
- You'll need to make an exception in your browser for visiting the site that is started, because SSL is enabled without a valid certificate.
- You'll see that 3 of the CFHTTP calls result in an error: Unknown host: `Received fatal alert: handshake_failure`
- Stop the server: `server stop`
- Disable SSL: `server set web.SSL.enable=false`
- Start the server again:  `server start`
- You will see that all of the CFHTTP requests are completed successfully.
