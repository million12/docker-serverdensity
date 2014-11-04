# Docker with ServerDensity agent (sd-agent)

This is a CentOS-7 based [million12/serverdensity](https://registry.hub.docker.com/u/million12/serverdensity/) Docker image with an installed sd-agent. Use it if you want to monitor your server with [ServerDensity.io](https://www.serverdensity.com/).


## Customise with environmental variables 

##### ACCOUNT_NAME  
The name of your organization account, i.e. https://ACCOUNT_NAME.serverdensity.io
  
##### API_KEY  
API key for the account. Note: this is an *API key*, **not** an *agent key* (the latter is per-device). Generate your API key under:  
ServerDensity panel -> Preferences -> Security -> API tokens.

##### GROUPNAME (optional)  
Group name in ServerDensity. If not provided, server will be listed in the 'Ungrouped' group.


## Usage

`docker run -dt --net=host --env="API_KEY=api-key" --env="ACCOUNT_NAME=name" million12/serverdensity`

Note 1: `-t` option is required as sd-agent uses sudo which requires TTY.  
Note 2: `--net=host` gives access to all host network interfaces (and inside the container sets the hostname to the same as hosts' hostname). This is to allow sd-agent reporting about network traffic. Read the Docker doc about potential security issues with it.


## Fleet/Cluster deployment
*serverdensity.service* file is an example for deployment with fleet to propagate the monitoring system on all/some of the servers in the cluster. 

#### Start service with fleetctl
On one of the servers that are in the cluster start the service by:

`sudo fleetctl start /path/to/service/file/serverdensity.service`

Note 1: **GROUPNAME** variable might be of use here.   
Note 2: For different settings than **GLOBAL** see [X-Fleet documentation](https://github.com/coreos/fleet/blob/master/Documentation/unit-files-and-scheduling.md).  


## Authors

* Przemyslaw Ozgo <linux@ozgo.info>
* Marcin Ryzycki <marcin@m12.io>

---

**Sponsored by** [Typostrap.io - the new prototyping tool](http://typostrap.io/) for building highly-interactive prototypes of your website or web app. Built on top of TYPO3 Neos CMS and Zurb Foundation framework.
