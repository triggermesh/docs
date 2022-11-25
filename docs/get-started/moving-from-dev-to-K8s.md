# Moving from dev to Kubernetes

The TriggerMesh command line interface `tmctl` is an easy to start working with events in your development environment with minimal dependencies.

But if you'd like to take your local TriggerMesh configuration and deploy it to a Kubernetes cluster, you can use the `tmctl dump` command for this, which produces a Kubernetes YAML manifest that can be used to instantiate the same configuration on a Kubernetes cluster that has TriggerMesh installed.

There exists a `--knative` option which produces a knative-compatible YAML configuration, that uses knative Brokers and Triggers.

!!! warning "Known limitations"
    * If you delete in tmctl, it deletes the backing infrastructure (e.g. AWS S3 buckets)
    * If you don't stop tmctl, there could be race conditions between both environments
    * The K8s env will reuse the same AWS resources
