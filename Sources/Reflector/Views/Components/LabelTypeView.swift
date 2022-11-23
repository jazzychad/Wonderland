//
//  LabelTypeView.swift
//  
//
//  Created by Chad Etzel on 11/21/22.
//

import SwiftUI

struct LabelTypeView: View {

    let node: MirrorNodeViewModel

    var body: some View {
        HStack {
            Text("\(node.label ?? "<<none>>")")
                .fontWeight(.bold)
            Text(":")
//            Text("\(node.subjectTypeString)\(node.isUnwrappedOptional ? "?" : "")")
            Text(node.subjectTypeString)
                .font(.system(.body, design: .monospaced))
            Spacer()
        }
    }
}


