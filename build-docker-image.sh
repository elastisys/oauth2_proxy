REPO=elastisys/oauth2_proxy
TAG=2.3-beta
PUSH=${PUSH:-no}

echo "building docker image ..."
docker build -t ${REPO}:${TAG} .

if [ "${PUSH}" = "yes" ]; then
    echo "pushing docker image ..."
    docker push ${REPO}:${TAG}
fi
