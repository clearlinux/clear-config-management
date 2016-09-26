# Proxy

If you are running behind a proxy, the following additional steps are needed.
This applies to Ubuntu and Fedora.

## In the deployment node

make sure your proxy environment variables are set.
 - http_proxy
 - https_proxy
 - no_proxy

otherwise, export them.

```shell
export http_proxy=http://<yourproxyaddress>:<proxyport>
export https_proxy=hhtp://<yourproxyaddress>:<proxyport>
export no_proxy=localhost,127.0.0.1,.example.com
```

Install the CIAO roles from ansible galaxy:

```shell
$ sudo -E ansible-galaxy -r requirements
```

## In the managed nodes

Make sure your package manager can handle the proxy

For Ubuntu, please edit ``/etc/apt/apt.conf`` and append the following line.
Also replace the proxy address and port.

```shell
Acquire::http::Proxy "http://<yourproxyaddress>:<proxyport>";
```

For Fedora, please edit ``/etc/dnf/dnf.conf`` and append the following line.
Also replace the proxy address and port.

```shell
proxy=http://<yourproxyaddress>:<proxyport>/
```

## In the controller node

Install Docker and make sure you can pull images. 
Edit ``/etc/systemd/system/docker.service.d/http-proxy.conf``, appending it
with:
```shell
[Service]
Environment="HTTP_PROXY=http://<yourproxyaddress>:<proxyport>/"
Environment="HTTPS_PROXY=http://<yourproxyaddress>:<proxyport>/"
Environment="NO_PROXY=localhost,127.0.0.1,.example.com"
```
Note: replace the hostname and port of your proxy server and append your local domain name.

Reload and restart the docker daemon:
```shell
$ sudo systemctl daemon-reload && sudo systemctl restart docker
```

(OPTIONAL): You can download the docker images used in the CIAO deployment.
```shell
$ sudo docker pull clearlinux/keystone
$ sudo docker pull clearlinux/ciao-webui
```
