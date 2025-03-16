NAME=$1

FILE_PATH=local-dev/${NAME}-cluster.yaml

cp capi/cluster-template.yaml $FILE_PATH
yq --inplace ".metadata.name = \"${NAME}\"" $FILE_PATH
