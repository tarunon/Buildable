# Buildable

Add FunctionBuilder syntax using Buildable Protocol.

```swift
extension Array: Buildable {
  static func empty() -> Array { [] }
  static func merge(_ lhs: Array, _ rhs: Array) -> Array {
    lhs + rhs
  }
}

[Int].build {
  [1, 2, 3]
  if myCondition {
    [4, 5, 6] 
  } else {
    [7, 8, 9]  
  }
}
```
