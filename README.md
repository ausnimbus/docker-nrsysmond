# Docker nrsysmond

[![Build Status](https://travis-ci.org/ausnimbus/docker-nrsysmond.svg?branch=master)](https://travis-ci.org/ausnimbus/docker-nrsysmond)

This repository contains the Dockerfile to build New Relic's nrsysmond agent in a Docker image.

The container should be installed as a Kubernetes daemonset.

## Installation

nrsysmond expects the environment variable to be set `NRSYSMOND_license_key`
