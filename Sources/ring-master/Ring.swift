//
//  Ring.swift
//  ring-master
//
//  Created by JJ Garzella on 11/22/18.
//

import Foundation

protocol Ring {
    static func +(lhs: Self, rhs: Self) -> Self
    prefix static func -(x: Self) -> Self
    static func *(lhs: Self, rhs: Self) -> Self
}

func -<T: Ring>(lhs: T, rhs: T) -> T {
    return lhs + -rhs;
}

extension Int : Ring {}
