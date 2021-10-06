## Full list

<!-- Please click "Preview" and ensure hyperlinks are working before clicking "Save page". -->

- [Bumblebee](#bumblebee)
- [Function](#function)

---

## Bumblebee

```hcl
transformer bumblebee "to_user_info" {

  context {
    operation "store" {
      path {
        key = "$ceSource"
        value = "source"
      }
      path {
        key = "$ceType"
        value = "type"
      }
    }
    operation "add" {
      path {
        key = "origsourcetype"
        value = "$${ceSource}-$${ceType}"
      }
      path {
        key = "type"
        value = "com.example.user"
      }
    }
  }

  data {
    operation "delete" {
      path {
        key = ""
      }
    }
    operation "shift" {
      path {
        key = "user.first_name:name"
      }
    }
  }

  //to = <component>.<identifier>
}
```

## Function

```hcl
transformer function "my_function" {
  runtime = "python"
  entrypoint = "main" // optional

  code = file("funcs/handler.py")

  ce_context {
    type = "my.transformation.v1.event"

    source = "my_function" // optional
    subject = "some_subject" // optional
  }

  public = false // optional

  //to = <component>.<identifier>
}
```
