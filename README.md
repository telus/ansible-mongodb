# ansible-mongodb

[MongoDB](https://www.mongodb.org/) - document-oriented database

[![Build Status](https://travis-ci.org/telusdigital/ansible-mongodb.svg?branch=master)](https://travis-ci.org/telusdigital/ansible-mongodb)
[![Platforms](http://img.shields.io/badge/platforms-ubuntu-lightgrey.svg?style=flat)](#)


Description
-----------
> "MongoDB (from humongous) is a document-oriented databases. Classified as a NoSQL database, MongoDB eschews the traditional table-based relational database structure in favor of JSON-like documents with dynamic schemas (MongoDB calls the format BSON), making the integration of data in certain types of applications easier and faster."
> -- Wikipedia entry for MongoDB

Tunables
--------
* `mongodb_user` (string) - User to run MongoDB as?
* `mongodb_group` (string) - Group to run MongoDB as?
* `mongodb_runtime_root` (string) - Directory for runtime data
* `mongodb_pidfile_path` (string) - Path for pidfile
* `mongodb_log_root` (string) - Directory for logs
* `mongodb_log_path` (string) - Path for log file
* `mongodb_client` (boolean) - Install MongoDB client?
* `mongodb_server` (boolean) - Install MongoDB server?
* `mongodb_accepts_external_connections` (boolean) - Should MongoDB listen for connections beyond localhost?
* `mongodb_set_permissions` (boolean) - yes|no It's set to no in the kitchen tests as the users and groups are not created. Otherwise this should be yes. It sets the appropriate permissions for Mongo.
* `mongodb_public_key` (string) The mongdb public key. https://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/
* `mongodb_list_file` (string) The list file for mongodb. https://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/


Dependencies
------------
* [telusdigital.apt-repository](https://github.com/telusdigital/ansible-apt-repository/)
* [telusdigital.logrotate](https://github.com/telusdigital/ansible-logrotate/)
* [telusdigital.fluentd](https://github.com/telusdigital/ansible-fluentd/)

Example Playbook
----------------
    - hosts: servers
      roles:
         - role: telusdigital.mongodb
           mongodb_server: yes

License
-------
[MIT](https://tldrlegal.com/license/mit-license)

Contributors
------------
* [Chris Olstrom](https://colstrom.github.io/) | [e-mail](mailto:chris@olstrom.com) | [Twitter](https://twitter.com/ChrisOlstrom)
* Aaron Pederson
* Ben Visser
* Kinnan Kwok
* Steven Harradine
