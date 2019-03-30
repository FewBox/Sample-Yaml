#!/bin/sh
NS=fewbox-staging
APP=sample
# Service
. ./Utility/Service.sh $NS $APP unsplash-service
. ./Utility/Service.sh $NS $APP auth-service
. ./Utility/Service.sh $NS $APP photo-service
. ./Utility/Service.sh $NS $APP review-service
. ./Utility/Service.sh $NS $APP rating-service
# Deployment
. ./Utility/Deployment.sh $NS $APP latest unsplash-deployment fewbox/sample-istio-unsplashapp:latest 80
. ./Utility/Deployment.sh $NS $APP latest auth-deployment fewbox/sample-istio-auth:latest 80
. ./Utility/Deployment.sh $NS $APP latest photo-deployment fewbox/sample-istio-photo:latest 80
. ./Utility/Deployment.sh $NS $APP latest review-deployment fewbox/sample-istio-review:latest 80
. ./Utility/Deployment.sh $NS $APP latest rating-deployment fewbox/sample-istio-rating:latest 80