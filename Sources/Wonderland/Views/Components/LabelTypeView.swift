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
                .font(.system(.body))
            Text(":")
                .font(.system(.caption))
//            Text("\(node.subjectTypeString)\(node.isUnwrappedOptional ? "?" : "")")
            Text(node.subjectTypeString)
                .font(.system(.caption, design: .monospaced))
            Spacer()
        }
    }
}


