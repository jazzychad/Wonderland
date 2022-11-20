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
        print(self.children)
    }

    var body: some View {
        VStack {
            let _ = print("vvv")
            ForEach(children) { child in
                HStack { // WHY IS THIS REQUIRED TO MAKE THE APP NOT LOCK UP!?!?!?!??!
                    let _ = print(child.value)
                    let _ = print(child.valueMirror.displayStyle)

                    if child.valueMirror.displayStyle == nil {
                        //TupleChildNodeView(node: MirrorNodeViewModel(label: child.label, value: child.value))
                        //TupleChildNodeView(node: child)
                        NodeView(node: child)
                        //PrimitiveNodeView(node: child)

                        //Text("nil")
                    } else {
                        //                    if child.valueMirror.displayStyle == .`struct` {
                        //                        StructNodeView(node: child)
                        //                    } else {
                        //                        let _ = print(String(describing:child.valueMirror.displayStyle))
                        //                        Text("soemthing else:")
                        //                    }
                        NodeView(node: child)
                        //Text("other2")
                    }
                    //NodeView(node: child)
                    //                Text(child.label ?? "<<no label>>")
                    //                Text("val: \(String(describing: child.value))")
                    //                Divider()
                }
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
