#!/bin/bash

kubectl run --rm -it \
    jumpy \
    --image=maliksalman/jump:latest \
    -- /bin/bash