//
//  Ring.swift
//  ring-master
//
//  Created by JJ Garzella on 11/22/18.
//

import Foundation

protocol Ring: Equatable {
    // A ring is an abelian group under addition
    static func +(lhs: Self, rhs: Self) -> Self
    prefix static func -(x: Self) -> Self
    
    // A ring also must have a mutliplication
    static func *(lhs: Self, rhs: Self) -> Self
}

// Things we don't currently enforce:
//  - addition is commutative
//  - zero
//  - distribution
//
//  - mutliplication commutative (most pf the time)
//  - one (in most examples)


func -<T: Ring>(lhs: T, rhs: T) -> T {
    return lhs + -rhs;
}

enum EuclideanError: Error {
    case EuclideanFuncitonZeroError
}

protocol EuclideanDomain : Ring {
    func EuclideanFunction() throws -> Int
}

extension Int : Ring {}
