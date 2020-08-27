//
//  Buildable.swift
//  App
//
//  Created by tarunon on 2020/08/27.
//

/// Adding FucntionBuilder feature in some Type.
public protocol Buildable: _Builder {
    static func empty() -> Self
    static func merge(_ lhs: Self, _ rhs: Self) -> Self
}

extension Buildable {
    public func _build() -> Self { self }

    public static func build<C>(@FunctionBuilder<Self> _ builder: () -> C) -> Self
    where C: _Builder, C.BuildTarget == Self {
        return builder()._build()
    }
}
