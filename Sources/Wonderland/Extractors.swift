
// THIS FILE IS AUTOMATICALLY GENERATED - DO NOT EDIT

// gyb /path/to/Sources/Extractors.swift.gyb --line-directive '' -o path/to/Sources/Wonderland/Extractors.swift

import Foundation
import Combine
import SwiftUI

#if os(iOS)
import UIKit
#elseif os(macOS)
import AppKit
#endif

// MARK: - ReflectionValueExtractor

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *  THIS CODE IS AUTOMATICALLY GENERATED - DO NOT EDIT!! *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

public protocol ReflectionValueExtractor {
    func extractWrappedValue() -> Any
    func wrapperTypeString() -> String
}



// MARK: - Published

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *  THIS CODE IS AUTOMATICALLY GENERATED - DO NOT EDIT!! *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

public protocol PublishedReflection: ReflectionValueExtractor {}
extension Published: PublishedReflection {
    public func extractWrappedValue() -> Any {
        return PublishedExtractor.extractWrappedValue(self)
    }

    public func wrapperTypeString() -> String {
        return "Published"
    }
}

final class PublishedExtractor<T> {
    @Published var value: T

    static func extractWrappedValue(_ wrapper: Published<T>) -> T {
        return Self(wrapper).value
    }

    init(_ wrapper: Published<T>) {
        _value = wrapper
    }
}


// MARK: - State

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *  THIS CODE IS AUTOMATICALLY GENERATED - DO NOT EDIT!! *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

public protocol StateReflection: ReflectionValueExtractor {}
extension State: StateReflection {
    public func extractWrappedValue() -> Any {
        return StateExtractor.extractWrappedValue(self)
    }

    public func wrapperTypeString() -> String {
        return "State"
    }
}

final class StateExtractor<T> {
    @State var value: T

    static func extractWrappedValue(_ wrapper: State<T>) -> T {
        return Self(wrapper).value
    }

    init(_ wrapper: State<T>) {
        _value = wrapper
    }
}


// MARK: - Binding

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *  THIS CODE IS AUTOMATICALLY GENERATED - DO NOT EDIT!! *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

public protocol BindingReflection: ReflectionValueExtractor {}
extension Binding: BindingReflection {
    public func extractWrappedValue() -> Any {
        return BindingExtractor.extractWrappedValue(self)
    }

    public func wrapperTypeString() -> String {
        return "Binding"
    }
}

final class BindingExtractor<T> {
    @Binding var value: T

    static func extractWrappedValue(_ wrapper: Binding<T>) -> T {
        return Self(wrapper).value
    }

    init(_ wrapper: Binding<T>) {
        _value = wrapper
    }
}


// MARK: - AppStorage

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *  THIS CODE IS AUTOMATICALLY GENERATED - DO NOT EDIT!! *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

public protocol AppStorageReflection: ReflectionValueExtractor {}
extension AppStorage: AppStorageReflection {
    public func extractWrappedValue() -> Any {
        return AppStorageExtractor.extractWrappedValue(self)
    }

    public func wrapperTypeString() -> String {
        return "AppStorage"
    }
}

final class AppStorageExtractor<T> {
    @AppStorage var value: T

    static func extractWrappedValue(_ wrapper: AppStorage<T>) -> T {
        return Self(wrapper).value
    }

    init(_ wrapper: AppStorage<T>) {
        _value = wrapper
    }
}


// MARK: - Environment

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *  THIS CODE IS AUTOMATICALLY GENERATED - DO NOT EDIT!! *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

public protocol EnvironmentReflection: ReflectionValueExtractor {}
extension Environment: EnvironmentReflection {
    public func extractWrappedValue() -> Any {
        return EnvironmentExtractor.extractWrappedValue(self)
    }

    public func wrapperTypeString() -> String {
        return "Environment"
    }
}

final class EnvironmentExtractor<T> {
    @Environment var value: T

    static func extractWrappedValue(_ wrapper: Environment<T>) -> T {
        return Self(wrapper).value
    }

    init(_ wrapper: Environment<T>) {
        _value = wrapper
    }
}


// MARK: - GestureState

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *  THIS CODE IS AUTOMATICALLY GENERATED - DO NOT EDIT!! *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

public protocol GestureStateReflection: ReflectionValueExtractor {}
extension GestureState: GestureStateReflection {
    public func extractWrappedValue() -> Any {
        return GestureStateExtractor.extractWrappedValue(self)
    }

    public func wrapperTypeString() -> String {
        return "GestureState"
    }
}

final class GestureStateExtractor<T> {
    @GestureState var value: T

    static func extractWrappedValue(_ wrapper: GestureState<T>) -> T {
        return Self(wrapper).value
    }

    init(_ wrapper: GestureState<T>) {
        _value = wrapper
    }
}


// MARK: - SceneStorage

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *  THIS CODE IS AUTOMATICALLY GENERATED - DO NOT EDIT!! *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

public protocol SceneStorageReflection: ReflectionValueExtractor {}
extension SceneStorage: SceneStorageReflection {
    public func extractWrappedValue() -> Any {
        return SceneStorageExtractor.extractWrappedValue(self)
    }

    public func wrapperTypeString() -> String {
        return "SceneStorage"
    }
}

final class SceneStorageExtractor<T> {
    @SceneStorage var value: T

    static func extractWrappedValue(_ wrapper: SceneStorage<T>) -> T {
        return Self(wrapper).value
    }

    init(_ wrapper: SceneStorage<T>) {
        _value = wrapper
    }
}


// MARK: - ObservedObject

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *  THIS CODE IS AUTOMATICALLY GENERATED - DO NOT EDIT!! *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

public protocol ObservedObjectReflection: ReflectionValueExtractor {}
extension ObservedObject: ObservedObjectReflection {
    public func extractWrappedValue() -> Any {
        return ObservedObjectExtractor.extractWrappedValue(self)
    }

    public func wrapperTypeString() -> String {
        return "ObservedObject"
    }
}

final class ObservedObjectExtractor<T: ObservableObject> {
    @ObservedObject var value: T

    static func extractWrappedValue(_ wrapper: ObservedObject<T>) -> T {
        return Self(wrapper).value
    }

    init(_ wrapper: ObservedObject<T>) {
        _value = wrapper
    }
}


// MARK: - EnvironmentObject

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *  THIS CODE IS AUTOMATICALLY GENERATED - DO NOT EDIT!! *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

public protocol EnvironmentObjectReflection: ReflectionValueExtractor {}
extension EnvironmentObject: EnvironmentObjectReflection {
    public func extractWrappedValue() -> Any {
        return EnvironmentObjectExtractor.extractWrappedValue(self)
    }

    public func wrapperTypeString() -> String {
        return "EnvironmentObject"
    }
}

final class EnvironmentObjectExtractor<T: ObservableObject> {
    @EnvironmentObject var value: T

    static func extractWrappedValue(_ wrapper: EnvironmentObject<T>) -> T {
        return Self(wrapper).value
    }

    init(_ wrapper: EnvironmentObject<T>) {
        _value = wrapper
    }
}


// MARK: - StateObject

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * *
 *  THIS CODE IS AUTOMATICALLY GENERATED - DO NOT EDIT!! *
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

public protocol StateObjectReflection: ReflectionValueExtractor {}
extension StateObject: StateObjectReflection {
    public func extractWrappedValue() -> Any {
        return StateObjectExtractor.extractWrappedValue(self)
    }

    public func wrapperTypeString() -> String {
        return "StateObject"
    }
}

final class StateObjectExtractor<T: ObservableObject> {
    @StateObject var value: T

    static func extractWrappedValue(_ wrapper: StateObject<T>) -> T {
        return Self(wrapper).value
    }

    init(_ wrapper: StateObject<T>) {
        _value = wrapper
    }
}



