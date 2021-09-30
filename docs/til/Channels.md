## Full list

<!-- Please click "Preview" and ensure hyperlinks are working before clicking "Save page". -->

- [Point-to-Point](#point-to-point)
- [Publish/Subscribe](#publishsubscribe)

---

## Point-to-Point

Enables asynchronous data exchanges between an event sender and a single event receiver, with control over delivery settings.

```hcl
channel point_to_point "async_data" {
  delivery {
    retries = 1 // optional
    dead_letter_sink = <component>.<identifier> // optional
  }

  //to = <component>.<identifier>
}
```

## Publish/Subscribe

Fans out events to selected subscribers.

```hcl
channel pubsub "fan_out" {
  subscribers = [
    //<component>.<identifier>,
    //<component>.<identifier>,
    //<component>.<identifier>,
  ]
}
```
