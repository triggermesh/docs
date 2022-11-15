# Moving from development to Kubernetes

tmctl dump.

Known limitations:

* If you delete in tmctl, it deletes the backing infrastructure (e.g. AWS S3 buckets)
* If you don't stop tmctl, there could be race conditions between both environments
* The K8s env will reuse the same AWS resources
