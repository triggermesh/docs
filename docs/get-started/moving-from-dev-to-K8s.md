# From tmctl to Kubernetes

The TriggerMesh command line interface `tmctl` is an easy to start working with events in your development environment with minimal dependencies.

But if you'd like to take your local TriggerMesh configuration and deploy it to a Kubernetes cluster, you can use the `tmctl dump` command for this, which produces a Kubernetes YAML manifest that can be used to instantiate the same configuration on a Kubernetes cluster that has TriggerMesh installed.

!!! warning "Important considerations"
    * If you delete resources in tmctl, it also deletes any backing infrastructure that it created (e.g. AWS SQS queues)
    * If you don't stop tmctl on your machine, there could be race conditions with the Kubernetes environment, because tmctl and TriggerMesh on K8s will share the same external resources

Please refer to the [`tmctl dump`](../reference/tmctl/tmctl_dump.md) reference documentation for more information.
