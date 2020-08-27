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
    
    public struct Pair<C0, C1> {
        var c0: C0
        var c1: C1
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

extension BuildSet.Pair: _Builder
where C0: _Builder, C1: _Builder, C0.BuildTarget == C1.BuildTarget {
    public func _build() -> C0.BuildTarget {
        .merge(c0._build(), c1._build())
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
