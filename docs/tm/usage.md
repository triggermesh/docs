## Examples

Deploy service from Docker image
```
tm deploy service foo -f gcr.io/google-samples/hello-app:1.0 --wait
```

If you have Dockerfile for your service, you can use Kaniko build template to deploy it
```
tm deploy service foobar \
    -f https://github.com/knative/docs \
    --build-template https://raw.githubusercontent.com/triggermesh/build-templates/master/kaniko/kaniko.yaml \
    --build-argument DIRECTORY=docs/serving/samples/hello-world/helloworld-go \
    --wait
```

or deploy service straight from Go source using OpenFaaS runtime
```
tm deploy service bar \
    -f https://github.com/golang/example \
    --build-template https://raw.githubusercontent.com/triggermesh/openfaas-runtime/master/go/openfaas-go-runtime.yaml \
    --build-argument DIRECTORY=hello \
    --wait
```

Moreover, for more complex deployments, tm CLI supports function definition parsing from [YAML](https://github.com/tzununbekov/serverless/blob/master/serverless.yaml) file and ability to combine multiple functions, runtimes and repositories

```
tm deploy -f https://github.com/tzununbekov/serverless
```

## AWS Lambda Compatible Functions

With the TriggerMesh CLI you can easily deploy AWS Lambda functions on Kubernetes:

Prepare local source for Golang function

```
mkdir lambda
cd lambda
cat > main.go <<EOF
package main

import (
        "fmt"
        "context"
        "github.com/aws/aws-lambda-go/lambda"
)

type MyEvent struct {
        Name string
}

func HandleRequest(ctx context.Context, name MyEvent) (string, error) {
        return fmt.Sprintf("Hello %s!", name.Name ), nil
}

func main() {
        lambda.Start(HandleRequest)
}
EOF
```

Deploy function using Knative lambda build template with Go runtime

```
tm deploy service go-lambda -f . --build-template https://raw.githubusercontent.com/triggermesh/knative-lambda-runtime/master/go-1.x/buildtemplate.yaml --wait
```

Lambda function available via http events

```
curl http://go-lambda.default.dev.triggermesh.io --data '{"Name": "Foo"}'
"Hello Foo!"
```

[Here](https://github.com/triggermesh/knative-lambda-runtime) you can find more information about Knative lambda runtimes
