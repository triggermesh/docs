## Full list

<!-- Please click "Preview" and ensure hyperlinks are working before clicking "Save page". -->

- [Content-Based](#content-based)
- [Data Expression Filter](#data-expression-filter)
- [Splitter](#splitter)

---

## Content-Based

Fans out events to selected destinations, with optional filtering conditions based on context attributes and/or the data payload.

```hcl
router content_based "dispatch" {

  route {
    //to = <component>.<identifier>
  }

  route {
    attributes = {
      type: "com.amazon.sqs.message"
      source: "arn:aws:sqs:us-east-2:123456789012:my-queue"
    }

    //to = <component>.<identifier>
  }

  route {
    condition = "$user.id.(int64) % 2 == 0"

    //to = <component>.<identifier>
  }

}
```

## Data Expression Filter

```hcl
router data_expression_filter "uid_is_even" {
  condition = "$user.id.(int64) % 2 == 0"

  //to = <component>.<identifier>
}
```

## Splitter

```hcl
router splitter "split_users" {
  path = ".items"

  ce_context {
    type = "ldap.user"
    source = "ldap://mycompany"
    extensions = {
      uid: "{.details.user_id}"
    }
  }

  //to = <component>.<identifier>
}
```
