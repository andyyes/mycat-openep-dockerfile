#!/bin/bash

docker export openep | docker import - openep:min