//
//  TupleNodeView.swift
//  
//
//  Created by Chad Etzel on 11/19/22.
//

import SwiftUI

struct TupleNodeView: View {

    let node: MirrorNodeViewModel
    let children: [MirrorNodeViewModel]

    public init(node: MirrorNodeViewModel) {
        self.node = node
        self.children = self.node.valueMirror.children.map { MirrorNodeViewModel(label: $0.label, value: $0.value) }
    }

    var body: some View {
        VStack {
            ForEach(children) { child in
                TupleChildNodeView(node: child)
            }
        }
    }
}

fileprivate struct TupleChildNodeView: View {

    let node: MirrorNodeViewModel

    var body: some View {
        NodeView(node: node)
    }
}
