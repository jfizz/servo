#!/bin/sh
task_id="$1"
artifact="$2"
shift 2
url="https://queue.taskcluster.net/v1/task/${task_id}/artifacts/${artifact}"
echo "Fetching $url"
curl \
    --retry 5 \
    --connect-timeout 10 \
    --location \
    "$url" \
    "$@"
