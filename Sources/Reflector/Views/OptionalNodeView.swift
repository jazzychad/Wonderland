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
            let _ = print((node.value as Optional<Any>).customMirror)
            let _ = print("asdfasdfasdfasdf")

            PillLabel(label: "optional", bgColor: Color(uiColor: .lightGray))

            HStack {
                Text("\(node.label ?? "<<none>>")")
                    .fontWeight(.bold)
                Text(":")
                if let v = node.value as? OptionalProtocol, v.isSome() {
                    Text("\(optionalType(String(describing: node.valueMirror.subjectType))) = \(String(describing: v.unwrap()))")
                } else {
                    Text("\(optionalType(String(describing: node.valueMirror.subjectType))) = nil")
                }

                Spacer()
            }

        }
    }

    private func optionalType(_ s: String) -> String {
        return s[9..<(s.count - 1)] + "?"
    }
}
