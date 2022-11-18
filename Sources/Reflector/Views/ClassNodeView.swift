//
//  ClassNodeView.swift
//  
//
//  Created by Chad Etzel on 11/15/22.
//

import Foundation
import SwiftUI

struct ClassNodeView: View {

    let node: MirrorNodeViewModel

    var body: some View {
        VStack(alignment: .leading) {

            PillLabel(label: "class", bgColor: .red)

            if let typeString = node.wrapperTypeString {
                Text("@\(typeString)")
                    .font(.system(.callout))
                    .fontWeight(.semibold)
                    .foregroundColor(.red)
            }
            HStack {
                if let typeString = node.wrapperTypeString {
                    Text("@\(typeString)")
                }
                Text("\(node.label ?? "<<none>>")")
                    .fontWeight(.bold)
                Text(":")
                Text("\(String(describing: node.valueMirror.subjectType))")
                Spacer()
            }

        }
    }
}
