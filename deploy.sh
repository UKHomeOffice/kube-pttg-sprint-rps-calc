#!/usr/bin/env bash

export WHITELIST=${WHITELIST:-0.0.0.0/0}


export DNS_PREFIX=${ENVIRONMENT}.notprod.
export KC_REALM=pttg-qa


cd kd
kd --insecure-skip-tls-verify \
    -f networkPolicy.yaml \
    -f ingress.yaml \
    -f deployment.yaml \
    -f service.yaml
    