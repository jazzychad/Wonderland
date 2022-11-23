//
//  OptionalNodeView.swift
//  
//
//  Created by Chad Etzel on 11/15/22.
//

import Foundation
import SwiftUI

struct OptionalNodeView: View {
    let node: MirrorNodeViewModel

    var body: some View {
        VStack(alignment: .leading) {
//            HStack {
//                PillLabel(label: "optional", bgColor: Color(uiColor: .lightGray))
//            }
            TagsView(label: "optional", bgColor: Color(uiColor: .lightGray), isUnwrappedOptional: false)

//            if let typeString = node.wrapperTypeString {
//                Text("@\(typeString)")
//                    .font(.system(.callout))
//                    .fontWeight(.semibold)
//                    .foregroundColor(.red)
//
//            }
            PropertyWrapperLabel(node: node)

            HStack {
                Text("\(node.label ?? "<<none>>")")
                    .fontWeight(.bold)
                Text(":")
                if let v = node.value as? OptionalProtocol, v.isSome() {
                    Text("\(optionalType(String(describing: node.valueMirror.subjectType))) = \(String(describing: v.unwrap()))")
                } else {
                    Text("\(optionalType(String(describing: node.valueMirror.subjectType))) = nil")
                        .font(.system(.body, design: .monospaced))
                }

                Spacer()
            }

        }
    }

    private func optionalType(_ s: String) -> String {
        return s[9..<(s.count - 1)] + "?"
    }
}
