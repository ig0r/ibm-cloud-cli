# IBM Cloud CLI container

> A container for managing infrastructure, servives and other resources

## Prerequisites

For convenient work with CLI you need to have:

- Platform API key or an API key file, [Platform API key](https://console.bluemix.net/iam/#/apikeys)
- Softlayer API key, [SL API key](https://control.bluemix.net/account/users), Select "View" for your user.

## Getting started

### Launch the container with CLI:

```
docker run -ti --name ibm-cloud-cli -v $(pwd)/apiKey.json:/vol/apiKey.json:ro igor/ibm-cloud-cli sh
```  

### Bluemix login

```
bluemix login --apikey @/vol/apiKey.json
```

Output:

```
/ # bluemix login --apikey @/vol/apiKey.json

Select an API endpoint:
1. eu-de - https://api.eu-de.bluemix.net
2. au-syd - https://api.au-syd.bluemix.net
3. us-east - https://api.us-east.bluemix.net
4. us-south - https://api.ng.bluemix.net
5. eu-gb - https://api.eu-gb.bluemix.net
6. Enter a different API endpoint
Enter a number> 4
Authenticating...
OK

Targeted account xxxxx Account (yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy) <-> zzzzzz


API endpoint:     https://api.ng.bluemix.net (API version: 2.92.0)
Region:           us-south
User:             xxxxxxxxxxxxxxxxxxxxx
Account:          xxxxx Account (yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy) <-> zzzzzz
Resource group:   No resource group targeted, use 'bluemix target -g RESOURCE_GROUP'
Org:
Space:

```  


### SoftLayer login

```
bluemix sl init -u <user_name> -p <api_key>
```

Output:

```
/ # bluemix sl init -u <user_name> -p <api_key>
OK

API endpoint:   https://api.softlayer.com/rest/v3.1
User name:      <user_name>
API key:        
<api_key>
/ #
```