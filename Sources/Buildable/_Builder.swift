//
//  _Builder.swift
//  
//
//  Created by tarunon on 2020/08/27.
//

public protocol _Builder {
    associatedtype BuildTarget: Buildable
    func _build() -> BuildTarget
}
