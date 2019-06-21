#!/bin/bash
kubectl get pods -o json | jq '.items[] | { name:.metadata.name, host:.status.hostIP, pod:.status.podIP }' -c