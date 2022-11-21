//
//  SwiftUIView.swift
//  
//
//  Created by Chad Etzel on 11/21/22.
//

import SwiftUI

struct _BaseNodeView: View {

    let node: MirrorNodeViewModel
    let objectTypeLabel: String?
    let accentColor: Color

    var body: some View {
        VStack(alignment: .leading) {
            //if let objectTypeLabel = objectTypeLabel {
                TagsView(label: objectTypeLabel, bgColor: accentColor, isUnwrappedOptional: node.isUnwrappedOptional)
            //}
            PropertyWrapperLabel(node: node)
            LabelTypeView(node: node)
            if node.value is CustomStringConvertible || node.valueMirror.displayStyle == .enum {
                ValueLabel(node: node)
            }

        }
    }
}


