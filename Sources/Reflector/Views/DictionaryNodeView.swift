//
//  DictionaryNodeView.swift
//
//
//  Created by Chad Etzel on 11/19/22.
//

import SwiftUI

struct DictionaryNodeView: View {

    let node: MirrorNodeViewModel

    var body: some View {
        VStack(alignment: .leading) {

            TagsView(label: "dictionary", bgColor: .pink, isUnwrappedOptional: node.isUnwrappedOptional)

            PropertyWrapperLabel(node: node)

            LabelTypeView(node: node)

        }
    }
}
