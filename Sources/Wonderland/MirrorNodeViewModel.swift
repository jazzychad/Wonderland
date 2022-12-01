//
//  MirrorNodeViewModel.swift
//  
//
//  Created by Chad Etzel on 11/15/22.
//

import Foundation

struct MirrorNodeViewModel: Identifiable {
    let id = UUID()
    let label: String?
    let value: Any
    let valueMirror: Mirror
    let isUnwrappedOptional: Bool // this came from unwrapping an optional type, used for styling the UI mainly
    let subjectTypeString: String

    private let extracted: [MirrorNodeViewModel]
    let wrapperTypeString: String?

    var extractedNode: MirrorNodeViewModel? {
        return extracted.first
    }

    init(label: String?, value: Any, isUnwrappedOptional: Bool = false, wrapperTypeString: String? = nil) {
        self.label = label
        self.value = value
        self.isUnwrappedOptional = isUnwrappedOptional
        let valueMirror = Mirror(reflecting: value)
        self.valueMirror = valueMirror
        self.wrapperTypeString = wrapperTypeString
        self.subjectTypeString = Self.typeString(for: String(describing: valueMirror.subjectType), isUnwrappedOptional: isUnwrappedOptional)

        if let extractor = value as? ReflectionValueExtractor {
            let extraction = extractor.extractWrappedValue()
            self.extracted = [
                MirrorNodeViewModel(label: String(label?[1...] ?? ""), value: extraction, wrapperTypeString: extractor.wrapperTypeString())
            ]
        } else {
            self.extracted = []
        }
    }

    static func typeString(for str: String, isUnwrappedOptional: Bool) -> String {
        let subjectTypeString = str
        var ret: String = subjectTypeString

        if subjectTypeString.starts(with: "Array<") {
            if let inner = extractGenericType(subjectTypeString) {
                let resolved = typeString(for: inner, isUnwrappedOptional: isUnwrappedOptional)
                ret = "[\(resolved)]"
            }
        } else if subjectTypeString.starts(with: "Dictionary<") {
            if let inner = extractGenericType(subjectTypeString) {
                let parts = inner.split(separator: ",").map { String($0).trimmingCharacters(in: .whitespacesAndNewlines)}
                if parts.count == 2 {
                    let resolved0 = typeString(for: parts[0], isUnwrappedOptional: isUnwrappedOptional)
                    let resolved1 = typeString(for: parts[1], isUnwrappedOptional: isUnwrappedOptional)
                    ret = "[\(resolved0) : \(resolved1)]"
                }
            }
        } else if subjectTypeString.starts(with: "Optional<") {
            if let inner = extractGenericType(subjectTypeString) {
                let resolved = typeString(for: inner, isUnwrappedOptional: isUnwrappedOptional)
                ret = resolved + "?"
            }
        } else if subjectTypeString.starts(with: "Set<") {
            if let inner = extractGenericType(subjectTypeString) {
                let resolved = typeString(for: inner, isUnwrappedOptional: isUnwrappedOptional)
                ret = "Set<\(resolved)>"
            }
        }

        if isUnwrappedOptional {
            return ret + "?"
        }
        return ret
    }

    static func extractGenericType(_ typestring: String) -> String? {
        let idx0 = typestring.firstIndex(of: "<")
        let idx2 = typestring.lastIndex(of: ">")
        if let idx0 = idx0,
           let idx2 = idx2 {
            let idx1 = typestring.index(idx0, offsetBy: 1)
            return String(typestring[idx1..<idx2])
        }
        return nil

    }

    
}
