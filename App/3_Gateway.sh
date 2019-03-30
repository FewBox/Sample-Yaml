#!/bin/sh
NS=fewbox-staging
GATEWAY=fewbox-staging-gateway
# Gateway
. ./Utility/Gateway.sh $NS $GATEWAY web HTTP 80
# Gateway Virtual Service
. ./Utility/GatewayVirtualService.sh $NS $GATEWAY fewbox-staging-gateway-virtualservice