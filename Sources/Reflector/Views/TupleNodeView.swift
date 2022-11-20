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
        print("init'd")
    }

    var body: some View {
        VStack(alignment: .leading) {
            let _ = print("vvv")
            ForEach(children) { child in
                let _ = print(child.value)
                let _ = print(child.valueMirror.displayStyle)
                if child.valueMirror.displayStyle == nil {
                    //TupleChildNodeView(node: MirrorNodeViewModel(label: child.label, value: child.value))
                    //TupleChildNodeView(node: child)
                    //NodeView(node: child)
                    Text("nil")
                } else {
                    Text("soemthing")
                }
                //NodeView(node: child)
//                Text(child.label ?? "<<no label>>")
//                Text("val: \(String(describing: child.value))")
//                Divider()
            }
            let _ = print("^^^")
        }
    }
}

fileprivate struct TupleChildNodeView: View {

    let node: MirrorNodeViewModel

    var body: some View {
        NodeView(node: node)
    }
}
