#!/bin/sh
NS=fewbox-staging
# Service
. ./Utility/Service.sh $NS unsplash unsplash-service
. ./Utility/Service.sh $NS auth auth-service
. ./Utility/Service.sh $NS photo photo-service
. ./Utility/Service.sh $NS review review-service
. ./Utility/Service.sh $NS rating rating-service
# Deployment
. ./Utility/Deployment.sh $NS unsplash latest unsplash-deployment fewbox/sample-istio-unsplashapp:latest 80
. ./Utility/Deployment.sh $NS auth latest auth-deployment fewbox/sample-istio-auth:latest 80
. ./Utility/Deployment.sh $NS photo latest photo-deployment fewbox/sample-istio-photo:latest 80
. ./Utility/Deployment.sh $NS review latest review-deployment fewbox/sample-istio-review:latest 80
. ./Utility/Deployment.sh $NS rating latest rating-deployment fewbox/sample-istio-rating:latest 80