# ansible-mongodb

[MongoDB](https://www.mongodb.org/) - document-oriented database

[![Platforms](http://img.shields.io/badge/platforms-ubuntu-lightgrey.svg?style=flat)](#)


Description
-----------
> "MongoDB (from humongous) is a document-oriented databases. Classified as a NoSQL database, MongoDB eschews the traditional table-based relational database structure in favor of JSON-like documents with dynamic schemas (MongoDB calls the format BSON), making the integration of data in certain types of applications easier and faster."
> -- Wikipedia entry for MongoDB

Tunables
--------
* `mongodb_user` (string) - User to run MongoDB as?
* `mongodb_runtime_root` (string) - Directory for runtime data
* `mongodb_pidfile_path` (string) - Path for pidfile
* `mongodb_log_root` (string) - Directory for logs
* `mongodb_log_path` (string) - Path for log file
* `mongodb_client` (boolean) - Install MongoDB client?
* `mongodb_server` (boolean) - Install MongoDB server?
* `mongodb_accepts_external_connections` (boolean) - Should MongoDB listen for connections beyond localhost?
* `mongodb_auth_enabled` (boolean) - Require authentication?

Dependencies
------------
* [colstrom.apt-repository](https://github.com/colstrom/ansible-apt-repository/)
* [colstrom.logrotate](https://github.com/colstrom/ansible-logrotate/)
* [colstrom.fluentd](https://github.com/colstrom/ansible-fluentd/)

Example Playbook
----------------
    - hosts: servers
      roles:
         - role: colstrom.mongodb
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
