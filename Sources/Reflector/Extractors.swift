//
//  Extractors.swift
//  
//
//  Created by Chad Etzel on 11/16/22.
//

import Foundation
import SwiftUI
import Combine

func extractGenericType(_ typestring: String) -> String? {
    let idx0 = typestring.firstIndex(of: "<")
    let idx2 = typestring.firstIndex(of: ">")
    if let idx0 = idx0,
       let idx2 = idx2 {
        let idx1 = typestring.index(idx0, offsetBy: 1)
        return String(typestring[idx1..<idx2])
    }
    return nil

}

// MARK: - Array

public protocol ArrayReflection {}
extension Array: ArrayReflection {}

// MARK: - Dictionary

public protocol DictionaryReflection {}
extension Dictionary: DictionaryReflection {}

// MARK: - Set

public protocol SetReflection {}
extension Set: SetReflection {}

//// MARK: - ReflectionValueExtractor
//
//public protocol ReflectionValueExtractor {
//    func extractValue() -> Any
//}
//
//// MARK: - Published
//
//
//
//public protocol PublishedReflection: ReflectionValueExtractor {}
//extension Published: PublishedReflection {
//    public func extractValue() -> Any {
//        return PublishedExtractor.extractValue(self)
//    }
//}
//final class PublishedExtractor<T> {
//    @Published var value: T
//
//    static func extractValue(_ wrapper: Published<T>) -> T {
//        return Self(wrapper).value
//    }
//
//    init(_ wrapper: Published<T>) {
//        _value = wrapper
//    }
//}
//
//// MARK: - Binding
//
//public protocol BindingReflection: ReflectionValueExtractor {}
//extension Binding: BindingReflection {
//    public func extractValue() -> Any {
//        return BindingExtractor.extractValue(self)
//    }
//}
//
//final class BindingExtractor<T> {
//    @Binding var value: T
//
//    static func extractValue(_ wrapper: Binding<T>) -> T {
//        return Self(wrapper).value
//    }
//
//    init(_ wrapper: Binding<T>) {
//        _value = wrapper
//    }
//}
//
//// MARK: - State
//
//public protocol StateReflection: ReflectionValueExtractor {}
//extension State: StateReflection {
//    public func extractValue() -> Any {
//        return StateExtractor.extractValue(self)
//    }
//}
//
//final class StateExtractor<T> {
//    @State var value: T
//
//    static func extractValue(_ wrapper: State<T>) -> T {
//        return Self(wrapper).value
//    }
//
//    init(_ wrapper: State<T>) {
//        _value = wrapper
//    }
//}
//
//// MARK: - ObservedObject
//
//public protocol ObservedObjectReflection: ReflectionValueExtractor {}
//extension ObservedObject: ObservedObjectReflection {
//    public func extractValue() -> Any {
//        return ObservedObjectExtractor.extractValue(self)
//    }
//}
//
//final class ObservedObjectExtractor<T: ObservableObject> {
//    @ObservedObject var value: T
//
//    static func extractValue(_ wrapper: ObservedObject<T>) -> T {
//        return Self(wrapper).value
//    }
//
//    init(_ wrapper: ObservedObject<T>) {
//        _value = wrapper
//    }
//}
//
//// MARK: - EnvironmentObject
//
//public protocol EnvironmentObjectReflection: ReflectionValueExtractor {}
//extension EnvironmentObject: EnvironmentObjectReflection {
//    public func extractValue() -> Any {
//        return EnvironmentObjectExtractor.extractValue(self)
//    }
//}
//
//final class EnvironmentObjectExtractor<T: ObservableObject> {
//    @EnvironmentObject var value: T
//
//    static func extractValue(_ wrapper: EnvironmentObject<T>) -> T {
//        return Self(wrapper).value
//    }
//
//    init(_ wrapper: EnvironmentObject<T>) {
//        _value = wrapper
//    }
//}
//
//// MARK: - StateObject
//
//public protocol StateObjectReflection: ReflectionValueExtractor {}
//extension StateObject: StateObjectReflection {
//    public func extractValue() -> Any {
//        return StateObjectExtractor.extractValue(self)
//    }
//}
//
//final class StateObjectExtractor<T: ObservableObject> {
//    @StateObject var value: T
//
//    static func extractValue(_ wrapper: StateObject<T>) -> T {
//        return Self(wrapper).value
//    }
//
//    init(_ wrapper: StateObject<T>) {
//        _value = wrapper
//    }
//}















//// MARK: - <#Type#>
//
//public protocol <#Type#>Reflection: ReflectionValueExtractor {}
//extension <#Type#>: <#Type#>Reflection {
//    public func extractValue() -> Any {
//        return <#Type#>Extractor.extractValue(self)
//    }
//}
//
//final class <#Type#>Extractor<T> {
//    @StateObject var value: T
//
//    static func extractValue(_ wrapper: <#Type#><T>) -> T {
//        return Self(wrapper).value
//    }
//
//    init(_ wrapper: <#Type#><T>) {
//        _value = wrapper
//    }
//}

