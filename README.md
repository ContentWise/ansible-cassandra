# Ansible Cassandra Role
[![Build Status](https://travis-ci.org/ContentWise/ansible-cassandra.svg?branch=master)](https://travis-ci.org/ContentWise/ansible-cassandra)

An Ansible Role that installs [Cassandra](http://cassandra.apache.org) on Linux.

The role will also install the [JMX Prometheus Java Agent](https://github.com/prometheus/jmx_exporter) to export metrics in Prometheus format.

## Role Variables

Available variables with their default values are defined in [defaults/main.yml](defaults/main.yml).

## Supported Platform

Checkout [Test Kitchen configuration](.kitchen.yml) to see what platforms are supported and tested.

## Test

Install required dependencies:

	bundle install

Run tests:

	kitchen test

## Example Playbook

Checkout [integration tests](test/integration) directory for example playbooks.

## License

Author: Marco Miglierina <marco.miglierina@contentwise.tv>

Licensed under the Apache License V2.0. See the [LICENSE file](LICENSE) for details.
