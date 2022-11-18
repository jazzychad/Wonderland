//
//  StructNodeView.swift
//  
//
//  Created by Chad Etzel on 11/15/22.
//

import Foundation
import SwiftUI

struct StructNodeView: View {

    let node: MirrorNodeViewModel

    var body: some View {
        VStack(alignment: .leading) {

            HStack {
                PillLabel(label: "struct", bgColor: .green)
                if node.isUnwrappedOptional {
                    PillLabel(label: "optional", bgColor: Color(uiColor: .lightGray))
                }
            }

            if let typeString = node.wrapperTypeString {
                Text("@\(typeString)")
                    .font(.system(.callout))
                    .fontWeight(.semibold)
                    .foregroundColor(.red)
            }
            HStack {

                Text("\(node.label ?? "<<none>>")")
                    .fontWeight(.bold)
                Text(":")
                Text("\(String(describing: node.valueMirror.subjectType))\(node.isUnwrappedOptional ? "?" : "")")
                Spacer()
            }

        }
    }
}
