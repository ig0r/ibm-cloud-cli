# IBM Cloud CLI container

> A container for managing infrastructure, servives and other resources

## Prerequisites

For convenient work with CLI you need to have:

- Platform API key or an API key file, [Platform API key](https://console.bluemix.net/iam/#/apikeys)
- Softlayer API key, [SL API key](https://control.bluemix.net/account/users), Select "View" for your user.

## Run

Launch the container with CLI:

```
docker run -ti --name ibm-cloud-cli -v $(pwd)/apiKey.json:/vol/apiKey.json:ro igor/ibm-cloud-cli sh
```