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

    private let extracted: [MirrorNodeViewModel]
    let wrapperTypeString: String?

    var extractedNode: MirrorNodeViewModel? {
        return extracted.first
    }

    init(label: String?, value: Any, isUnwrappedOptional: Bool = false, wrapperTypeString: String? = nil) {
        self.label = label
        self.value = value
        self.isUnwrappedOptional = isUnwrappedOptional
        self.valueMirror = Mirror(reflecting: value)
        self.wrapperTypeString = wrapperTypeString

        if let extractor = value as? ReflectionValueExtractor {
            let extraction = extractor.extractValue()
            self.extracted = [
                MirrorNodeViewModel(label: String(label?[1...] ?? ""), value: extraction, wrapperTypeString: extractor.wrapperTypeString())
            ]
        } else {
            self.extracted = []
        }

//        if valueMirror.displayStyle == .optional {
//
//            if let optVal = self.value as? OptionalProtocol {
//
//                if optVal.isSome() {
//                    let v = optVal.unwrap()
//                    let t = optVal.wrappedType()
//                    let mir = Mirror(reflecting: v)
//                    print("VVVVVVVVVVVV")
//                    print(mir)
//                    print(mir.subjectType)
//                    print("wrapped type: \(String(describing: t))")
//                    print("~~~~~~~")
//                }
//            }
//
//        } else {
//            // ??
//        }
    }
}
