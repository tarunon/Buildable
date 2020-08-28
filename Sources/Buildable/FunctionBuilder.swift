//
//  FunctionBuilder.swift
//  
//
//  Created by tarunon on 2020/08/27.
//

/// Generic function builder
@_functionBuilder
public struct FunctionBuilder<C> {
    public typealias Empty = BuildSet.Empty
    public typealias Tuple2 = BuildSet.Tuple2
    public typealias Tuple3 = BuildSet.Tuple3
    public typealias Tuple4 = BuildSet.Tuple4
    public typealias Tuple5 = BuildSet.Tuple5
    public typealias Tuple6 = BuildSet.Tuple6
    public typealias Tuple7 = BuildSet.Tuple7
    public typealias Tuple8 = BuildSet.Tuple8
    public typealias Tuple9 = BuildSet.Tuple9
    public typealias Either = BuildSet.Either

    public static func buildBlock() -> Empty<C> {
        .init()
    }

    public static func buildBlock<C>(_ c: C) -> C {
        c
    }

    public static func buildBlock<C0, C1>(_ c0: C0, _ c1: C1) -> Tuple2<C0, C1> {
        .init(
            c0: c0,
            c1: c1
        )
    }

    public static func buildIf<C>(_ c: C?) -> Either<C, Empty<C>> {
        if let c = c {
            return .c0(c)
        } else {
            return .c1(.init())
        }
    }

    public static func buildEither<T, F>(first: T) -> Either<T, F> {
        .c0(first)
    }

    public static func buildEither<T, F>(second: F) -> Either<T, F> {
        .c1(second)
    }
}

extension FunctionBuilder {
    public static func buildBlock<C0, C1, C2>(_ c0: C0, _ c1: C1, _ c2: C2) -> Tuple3<
        C0, C1, C2
    > {
        .init(
            c0: c0,
            c1: c1,
            c2: c2
        )
    }

    public static func buildBlock<C0, C1, C2, C3>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3) -> Tuple4<
        C0, C1, C2, C3
    > {
        .init(
            c0: c0,
            c1: c1,
            c2: c2,
            c3: c3
        )
    }

    public static func buildBlock<C0, C1, C2, C3, C4>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4) -> Tuple5<
        C0, C1, C2, C3, C4
    > {
        .init(
            c0: c0,
            c1: c1,
            c2: c2,
            c3: c3,
            c4: c4
        )
    }

    public static func buildBlock<C0, C1, C2, C3, C4, C5>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5) -> Tuple6<
        C0, C1, C2, C3, C4, C5
    > {
        .init(
            c0: c0,
            c1: c1,
            c2: c2,
            c3: c3,
            c4: c4,
            c5: c5
        )
    }

    public static func buildBlock<C0, C1, C2, C3, C4, C5, C6>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6) -> Tuple7<
        C0, C1, C2, C3, C4, C5, C6
    > {
        .init(
            c0: c0,
            c1: c1,
            c2: c2,
            c3: c3,
            c4: c4,
            c5: c5,
            c6: c6
        )
    }

    public static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7) -> Tuple8<
        C0, C1, C2, C3, C4, C5, C6, C7
    > {
        .init(
            c0: c0,
            c1: c1,
            c2: c2,
            c3: c3,
            c4: c4,
            c5: c5,
            c6: c6,
            c7: c7
        )
    }

    public static func buildBlock<C0, C1, C2, C3, C4, C5, C6, C7, C8>(_ c0: C0, _ c1: C1, _ c2: C2, _ c3: C3, _ c4: C4, _ c5: C5, _ c6: C6, _ c7: C7, _ c8: C8) -> Tuple9<
        C0, C1, C2, C3, C4, C5, C6, C7, C8
    > {
        .init(
            c0: c0,
            c1: c1,
            c2: c2,
            c3: c3,
            c4: c4,
            c5: c5,
            c6: c6,
            c7: c7,
            c8: c8
        )
    }
}
