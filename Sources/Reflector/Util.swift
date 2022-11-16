//
//  Util.swift
//  
//
//  Created by Chad Etzel on 11/15/22.
//

import Foundation

extension String {
    subscript(_ range: CountableRange<Int>) -> String {
        let start = index(startIndex, offsetBy: max(0, range.lowerBound))
        let end = index(start, offsetBy: min(self.count - range.lowerBound,
                                             range.upperBound - range.lowerBound))
        return String(self[start..<end])
    }

    subscript(_ range: CountablePartialRangeFrom<Int>) -> String {
        let start = index(startIndex, offsetBy: max(0, range.lowerBound))
        return String(self[start...])
    }
}


protocol OptionalProtocol {
    func isSome() -> Bool
    func unwrap() -> Any
    func wrappedType() -> Any.Type
}

extension Optional : OptionalProtocol {
    func isSome() -> Bool {
        switch self {
        case .none: return false
        case .some: return true
        }
    }

    func unwrap() -> Any {
        switch self {
        case .none: preconditionFailure("trying to unwrap nil")
        case .some(let unwrapped): return unwrapped
        }
    }

    func wrappedType() -> Any.Type {
        guard self.isSome() else { preconditionFailure("trying to unwrap nil") }
        let mirror = Mirror(reflecting: self.unwrap())
        return mirror.subjectType
    }
}

//extension Optional {
//    func wrappedType() -> Any.Type? {
//        switch self {
//        case .none:
//            return nil
//        case .some(let unwrapped):
//            let mirror = Mirror(reflecting: unwrapped)
//            return mirror.subjectType
//        }
//    }
//}

func unwrapUsingProtocol<T>(_ any: T) -> Any
{
    guard let optional = any as? OptionalProtocol, optional.isSome() else {
        return any
    }
    return optional.unwrap()
}
