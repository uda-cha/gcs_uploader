#!/bin/bash -eu

gcloud auth activate-service-account --key-file /workdir/.credentials/account.json

echo [`date +"%Y/%m/%d %H:%M:%S"`] excuting gsutil -m rsync -r ${SRC_PATH} gs://${BUCKET_NAME}...
gsutil -m rsync -r ${SRC_PATH} gs://${BUCKET_NAME}
echo [`date +"%Y/%m/%d %H:%M:%S"`] done.
