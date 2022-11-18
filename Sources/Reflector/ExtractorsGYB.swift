// ###sourceLocation(file: "/Users/chad/Documents/iphoneapps/ReflectorPackage/Reflector/Sources/ExtractorsGYB.swift.gyb", line: 1)

import Foundation
import Combine
import SwiftUI

// MARK: - ReflectionValueExtractor

public protocol ReflectionValueExtractor {
    func extractValue() -> Any
    func wrapperTypeString() -> String
}

// ###sourceLocation(file: "/Users/chad/Documents/iphoneapps/ReflectorPackage/Reflector/Sources/ExtractorsGYB.swift.gyb", line: 24)

// ###sourceLocation(file: "/Users/chad/Documents/iphoneapps/ReflectorPackage/Reflector/Sources/ExtractorsGYB.swift.gyb", line: 30)

// MARK: - Published

public protocol PublishedReflection: ReflectionValueExtractor {}
extension Published: PublishedReflection {
    public func extractValue() -> Any {
        return PublishedExtractor.extractValue(self)
    }

    public func wrapperTypeString() -> String {
        return "Published"
    }
}

final class PublishedExtractor<T> {
    @Published var value: T

    static func extractValue(_ wrapper: Published<T>) -> T {
        return Self(wrapper).value
    }

    init(_ wrapper: Published<T>) {
        _value = wrapper
    }
}

// ###sourceLocation(file: "/Users/chad/Documents/iphoneapps/ReflectorPackage/Reflector/Sources/ExtractorsGYB.swift.gyb", line: 30)

// MARK: - State

public protocol StateReflection: ReflectionValueExtractor {}
extension State: StateReflection {
    public func extractValue() -> Any {
        return StateExtractor.extractValue(self)
    }

    public func wrapperTypeString() -> String {
        return "State"
    }
}

final class StateExtractor<T> {
    @State var value: T

    static func extractValue(_ wrapper: State<T>) -> T {
        return Self(wrapper).value
    }

    init(_ wrapper: State<T>) {
        _value = wrapper
    }
}

// ###sourceLocation(file: "/Users/chad/Documents/iphoneapps/ReflectorPackage/Reflector/Sources/ExtractorsGYB.swift.gyb", line: 30)

// MARK: - Binding

public protocol BindingReflection: ReflectionValueExtractor {}
extension Binding: BindingReflection {
    public func extractValue() -> Any {
        return BindingExtractor.extractValue(self)
    }

    public func wrapperTypeString() -> String {
        return "Binding"
    }
}

final class BindingExtractor<T> {
    @Binding var value: T

    static func extractValue(_ wrapper: Binding<T>) -> T {
        return Self(wrapper).value
    }

    init(_ wrapper: Binding<T>) {
        _value = wrapper
    }
}

// ###sourceLocation(file: "/Users/chad/Documents/iphoneapps/ReflectorPackage/Reflector/Sources/ExtractorsGYB.swift.gyb", line: 30)

// MARK: - AppStorage

public protocol AppStorageReflection: ReflectionValueExtractor {}
extension AppStorage: AppStorageReflection {
    public func extractValue() -> Any {
        return AppStorageExtractor.extractValue(self)
    }

    public func wrapperTypeString() -> String {
        return "AppStorage"
    }
}

final class AppStorageExtractor<T> {
    @AppStorage var value: T

    static func extractValue(_ wrapper: AppStorage<T>) -> T {
        return Self(wrapper).value
    }

    init(_ wrapper: AppStorage<T>) {
        _value = wrapper
    }
}

// ###sourceLocation(file: "/Users/chad/Documents/iphoneapps/ReflectorPackage/Reflector/Sources/ExtractorsGYB.swift.gyb", line: 30)

// MARK: - ObservedObject

public protocol ObservedObjectReflection: ReflectionValueExtractor {}
extension ObservedObject: ObservedObjectReflection {
    public func extractValue() -> Any {
        return ObservedObjectExtractor.extractValue(self)
    }

    public func wrapperTypeString() -> String {
        return "ObservedObject"
    }
}

final class ObservedObjectExtractor<T: ObservableObject> {
    @ObservedObject var value: T

    static func extractValue(_ wrapper: ObservedObject<T>) -> T {
        return Self(wrapper).value
    }

    init(_ wrapper: ObservedObject<T>) {
        _value = wrapper
    }
}

// ###sourceLocation(file: "/Users/chad/Documents/iphoneapps/ReflectorPackage/Reflector/Sources/ExtractorsGYB.swift.gyb", line: 30)

// MARK: - EnvironmentObject

public protocol EnvironmentObjectReflection: ReflectionValueExtractor {}
extension EnvironmentObject: EnvironmentObjectReflection {
    public func extractValue() -> Any {
        return EnvironmentObjectExtractor.extractValue(self)
    }

    public func wrapperTypeString() -> String {
        return "EnvironmentObject"
    }
}

final class EnvironmentObjectExtractor<T: ObservableObject> {
    @EnvironmentObject var value: T

    static func extractValue(_ wrapper: EnvironmentObject<T>) -> T {
        return Self(wrapper).value
    }

    init(_ wrapper: EnvironmentObject<T>) {
        _value = wrapper
    }
}

// ###sourceLocation(file: "/Users/chad/Documents/iphoneapps/ReflectorPackage/Reflector/Sources/ExtractorsGYB.swift.gyb", line: 30)

// MARK: - StateObject

public protocol StateObjectReflection: ReflectionValueExtractor {}
extension StateObject: StateObjectReflection {
    public func extractValue() -> Any {
        return StateObjectExtractor.extractValue(self)
    }

    public func wrapperTypeString() -> String {
        return "StateObject"
    }
}

final class StateObjectExtractor<T: ObservableObject> {
    @StateObject var value: T

    static func extractValue(_ wrapper: StateObject<T>) -> T {
        return Self(wrapper).value
    }

    init(_ wrapper: StateObject<T>) {
        _value = wrapper
    }
}

// ###sourceLocation(file: "/Users/chad/Documents/iphoneapps/ReflectorPackage/Reflector/Sources/ExtractorsGYB.swift.gyb", line: 57)



