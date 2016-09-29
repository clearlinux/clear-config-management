Proxy
=====

If you are running behind a proxy, the following additional steps are needed:
This applies to Ubuntu and Fedora.

In the deployment node
----------------------

Make sure apt can run. Edit ``/etc/apt/apt.conf`` (to install ansible and 
dependencies), appending it with::

  Acquire::http::Proxy "http://yourproxyaddress:proxyport";

Install the CIAO roles from ansible-galaxy:::

  $ sudo -E ansible-galaxy -r requirements

In the managed nodes
--------------------

Make sure apt can run. Edit ``/etc/apt/apt.conf``, appending it with::

  Acquire::http::Proxy "http://yourproxyaddress:proxyport";
  
In the controller node
----------------------

Install Docker and make sure you can pull images. Edit 
``/etc/systemd/system/docker.service.d/http-proxy.conf``, appending it 
with::

  [Service]
  Environment="HTTP_PROXY=http://hostname:port/"
  Environment="HTTPS_PROXY=http://hostname:port/"
  Environment="NO_PROXY=localhost,127.0.0.1,.example.com"

Note: replace the hostname and port of your proxy server and append your local domain name.

Reload and restart the docker daemon::

  $ sudo systemctl daemon-reload && sudo systemctl restart docker

(OPTIONAL): You can download the docker images used in the CIAO deployment.::

  $ sudo docker pull clearlinux/keystone
  $ sudo docker pull clearlinux/ciao-webui
