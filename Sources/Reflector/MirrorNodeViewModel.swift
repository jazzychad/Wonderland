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

    init(label: String?, value: Any) {
        self.label = label
        self.value = value
        self.valueMirror = Mirror(reflecting: value)

        if valueMirror.displayStyle == .optional {

            if let optVal = self.value as? OptionalProtocol {

                if optVal.isSome() {
                    let v = optVal.unwrap()
                    let t = optVal.wrappedType()
                    let mir = Mirror(reflecting: v)
                    print("VVVVVVVVVVVV")
                    print(mir)
                    print(mir.subjectType)
                    print("wrapped type: \(String(describing: t))")
                    print("~~~~~~~")
                }
            }

        } else {
            // ??
        }
    }
}
