#!/bin/sh
NS=fewbox-staging
APP=sample
. ./Utility/NameSpace.sh $NS $APP
. ./Utility/IstioNameSpaceInjection.sh $NS