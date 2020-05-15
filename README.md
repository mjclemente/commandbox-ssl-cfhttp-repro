# commandbox-ssl-cfhttp-repro
Repro case for issue with CommandBox, SSL, and CFHTTP

## Issue
Enabling SSL results in some CFHTTP requests to fail.

## To Reproduce

- Start up the server using CommandBox: `server start`
- Because SSL is enabled, you'll need to make an exception in your browser for visiting the site that is started
- You'll see that 3 of the `cfhttp` calls result in an error: Unknown host: Received fatal alert: handshake_failure
- Stop the server: `server stop`
- Disable SSL: `server set web.SSL.enable=false`
- Start the server again
- You will see that all of the CFHTTP requests are completed successfully.
