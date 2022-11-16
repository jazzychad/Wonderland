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

            PillLabel(label: "struct", bgColor: .green)

            HStack {
                Text("\(node.label ?? "<<none>>")")
                    .fontWeight(.bold)
                Text(":")
                Text("\(String(describing: node.valueMirror.subjectType))")
                Spacer()
            }

        }
    }
}
