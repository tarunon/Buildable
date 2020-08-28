//
//  BuildSet.swift
//  
//
//  Created by tarunon on 2020/08/27.
//

/// Intermediate objects for function builder
public enum BuildSet {
    public struct Empty<C>{
    }
    
    public struct Tuple2<C0, C1> {
        var c0: C0
        var c1: C1
    }

    public struct Tuple3<C0, C1, C2> {
        var c0: C0
        var c1: C1
        var c2: C2
    }

    public struct Tuple4<C0, C1, C2, C3> {
        var c0: C0
        var c1: C1
        var c2: C2
        var c3: C3
    }

    public struct Tuple5<C0, C1, C2, C3, C4> {
        var c0: C0
        var c1: C1
        var c2: C2
        var c3: C3
        var c4: C4
    }

    public struct Tuple6<C0, C1, C2, C3, C4, C5> {
        var c0: C0
        var c1: C1
        var c2: C2
        var c3: C3
        var c4: C4
        var c5: C5
    }

    public struct Tuple7<C0, C1, C2, C3, C4, C5, C6> {
        var c0: C0
        var c1: C1
        var c2: C2
        var c3: C3
        var c4: C4
        var c5: C5
        var c6: C6
    }

    public struct Tuple8<C0, C1, C2, C3, C4, C5, C6, C7> {
        var c0: C0
        var c1: C1
        var c2: C2
        var c3: C3
        var c4: C4
        var c5: C5
        var c6: C6
        var c7: C7
    }

    public struct Tuple9<C0, C1, C2, C3, C4, C5, C6, C7, C8> {
        var c0: C0
        var c1: C1
        var c2: C2
        var c3: C3
        var c4: C4
        var c5: C5
        var c6: C6
        var c7: C7
        var c8: C8
    }

    public enum Either<C0, C1> {
        case c0(C0)
        case c1(C1)
    }
}

extension BuildSet.Empty: _Builder where C: _Builder {
    public func _build() -> C.BuildTarget {
        .empty()
    }
}

extension BuildSet.Tuple2: _Builder
where C0: _Builder, C1: _Builder, C0.BuildTarget == C1.BuildTarget {
    public func _build() -> C0.BuildTarget {
        c0._build()
            .merging(c1._build())
    }
}

extension BuildSet.Tuple3: _Builder
where C0: _Builder, C1: _Builder, C2: _Builder, C0.BuildTarget == C1.BuildTarget, C0.BuildTarget == C2.BuildTarget {
    public func _build() -> C0.BuildTarget {
        c0._build()
            .merging(c1._build())
            .merging(c2._build())
    }
}


extension BuildSet.Tuple4: _Builder
where C0: _Builder, C1: _Builder, C2: _Builder, C3: _Builder, C0.BuildTarget == C1.BuildTarget, C0.BuildTarget == C2.BuildTarget, C0.BuildTarget == C3.BuildTarget {
    public func _build() -> C0.BuildTarget {
        c0._build()
            .merging(c1._build())
            .merging(c2._build())
            .merging(c3._build())
    }
}

extension BuildSet.Tuple5: _Builder
where C0: _Builder, C1: _Builder, C2: _Builder, C3: _Builder, C4: _Builder, C0.BuildTarget == C1.BuildTarget, C0.BuildTarget == C2.BuildTarget, C0.BuildTarget == C3.BuildTarget, C0.BuildTarget == C4.BuildTarget {
    public func _build() -> C0.BuildTarget {
        c0._build()
            .merging(c1._build())
            .merging(c2._build())
            .merging(c3._build())
            .merging(c4._build())
    }
}

extension BuildSet.Tuple6: _Builder
where C0: _Builder, C1: _Builder, C2: _Builder, C3: _Builder, C4: _Builder, C5: _Builder, C0.BuildTarget == C1.BuildTarget, C0.BuildTarget == C2.BuildTarget, C0.BuildTarget == C3.BuildTarget, C0.BuildTarget == C4.BuildTarget, C0.BuildTarget == C5.BuildTarget {
    public func _build() -> C0.BuildTarget {
        c0._build()
            .merging(c1._build())
            .merging(c2._build())
            .merging(c3._build())
            .merging(c4._build())
            .merging(c5._build())
    }
}

extension BuildSet.Tuple7: _Builder
where C0: _Builder, C1: _Builder, C2: _Builder, C3: _Builder, C4: _Builder, C5: _Builder, C6: _Builder, C0.BuildTarget == C1.BuildTarget, C0.BuildTarget == C2.BuildTarget, C0.BuildTarget == C3.BuildTarget, C0.BuildTarget == C4.BuildTarget, C0.BuildTarget == C5.BuildTarget, C0.BuildTarget == C6.BuildTarget {
    public func _build() -> C0.BuildTarget {
        c0._build()
            .merging(c1._build())
            .merging(c2._build())
            .merging(c3._build())
            .merging(c4._build())
            .merging(c5._build())
            .merging(c6._build())
    }
}

extension BuildSet.Tuple8: _Builder
where C0: _Builder, C1: _Builder, C2: _Builder, C3: _Builder, C4: _Builder, C5: _Builder, C6: _Builder, C7: _Builder, C0.BuildTarget == C1.BuildTarget, C0.BuildTarget == C2.BuildTarget, C0.BuildTarget == C3.BuildTarget, C0.BuildTarget == C4.BuildTarget, C0.BuildTarget == C5.BuildTarget, C0.BuildTarget == C6.BuildTarget, C0.BuildTarget == C7.BuildTarget {
    public func _build() -> C0.BuildTarget {
        c0._build()
            .merging(c1._build())
            .merging(c2._build())
            .merging(c3._build())
            .merging(c4._build())
            .merging(c5._build())
            .merging(c6._build())
            .merging(c7._build())
    }
}

extension BuildSet.Tuple9: _Builder
where C0: _Builder, C1: _Builder, C2: _Builder, C3: _Builder, C4: _Builder, C5: _Builder, C6: _Builder, C7: _Builder, C8: _Builder, C0.BuildTarget == C1.BuildTarget, C0.BuildTarget == C2.BuildTarget, C0.BuildTarget == C3.BuildTarget, C0.BuildTarget == C4.BuildTarget, C0.BuildTarget == C5.BuildTarget, C0.BuildTarget == C6.BuildTarget, C0.BuildTarget == C7.BuildTarget, C0.BuildTarget == C8.BuildTarget {
    public func _build() -> C0.BuildTarget {
        c0._build()
            .merging(c1._build())
            .merging(c2._build())
            .merging(c3._build())
            .merging(c4._build())
            .merging(c5._build())
            .merging(c6._build())
            .merging(c7._build())
            .merging(c8._build())
    }
}

extension BuildSet.Either: _Builder
where C0: _Builder, C1: _Builder, C0.BuildTarget == C1.BuildTarget {
    public func _build() -> C0.BuildTarget {
        switch self {
        case .c0(let c0): return c0._build()
        case .c1(let c1): return c1._build()
        }
    }
}
