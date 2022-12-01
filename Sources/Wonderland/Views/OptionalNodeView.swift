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
            TagsView(label: "optional", bgColor: Color(uiColor: .lightGray), isUnwrappedOptional: false)

            PropertyWrapperLabel(node: node)

            HStack {
                Text("\(node.label ?? "<<none>>")")
                    .fontWeight(.bold)
                Text(":")
                if let v = node.value as? OptionalProtocol, v.isSome() {
                    Text("\(optionalType(String(describing: node.valueMirror.subjectType))) = \(String(describing: v.unwrap()))")
                } else {
                    Text("\(optionalType(String(describing: node.valueMirror.subjectType))) = nil")
                        .font(.system(.caption, design: .monospaced))
                }

                Spacer()
            }

        }
    }

    private func optionalType(_ s: String) -> String {
        return s[9..<(s.count - 1)] + "?"
    }
}
