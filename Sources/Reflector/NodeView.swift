//
//  NodeView.swift
//  
//
//  Created by Chad Etzel on 11/17/22.
//

import Foundation
import SwiftUI

struct NodeView: View {

    let node: MirrorNodeViewModel

    var body: some View {
        let _ = print("in NodeView body")
        if let extracted = node.extractedNode {
            NodeView(node: extracted)
        } else
        if let style = node.valueMirror.displayStyle {
            switch style {
            case .`struct`:
                NavigationLink {
                    MirrorView(subject: node.value)
                } label: {
                    StructNodeView(node: node)
                }

            case .`class`:
                NavigationLink {
                    MirrorView(subject: node.value)
                } label: {
                    ClassNodeView(node: node)
                }
            case .`enum`:
                EnumNodeView(node: node)
            case .tuple:
//                Text("tuple")
//                NavigationLink {
//                    MirrorView(subject: node.value)
//                } label: {
                    TupleNodeView(node: node)
//                }
            case .optional:
                if let v = node.value as? OptionalProtocol, v.isSome() {
                    NodeView(node: MirrorNodeViewModel(label: node.label, value: v.unwrap(), isUnwrappedOptional: true))
                } else {
                    OptionalNodeView(node: node)
                }
            case .collection:
                NavigationLink {
                    MirrorView(subject: node.value)
                } label: {
                    CollectionNodeView(node: node)
                }
            case .set:
                NavigationLink {
                    MirrorView(subject: node.value)
                } label: {
                    CollectionNodeView(node: node)
                }
            case .dictionary:
                NavigationLink {
                    MirrorView(subject: node.value)
                } label: {
                    CollectionNodeView(node: node)
                }
            default:
                Text("other")
            }
        } else {
            PrimitiveNodeView(node: node)
        }
    }
}

// MARK: -

struct SimpleNodeView: View {

    let node: MirrorNodeViewModel

    init(node: MirrorNodeViewModel) {
        self.node = node
        print("init'd SimpleNodeView")
    }

    var body: some View {
        let _ = print("in SimpleNodeView body")

        if let extracted = node.extractedNode {
            let _ = print("found extracted node")
            SimpleNodeView(node: extracted)
            //Text("WAT")
        } else
        if let style = node.valueMirror.displayStyle {
            let _ = print("found style:")
            let _ = print(style)
            switch style {

            case .`struct`:

                    StructNodeView(node: node)


            case .`class`:

                    ClassNodeView(node: node)

            case .`enum`:
                EnumNodeView(node: node)
            case .tuple:
                //                Text("tuple")
                //                NavigationLink {
                //                    MirrorView(subject: node.value)
                //                } label: {
                TupleNodeView(node: node)
                //                }
            case .optional:
//                Text("optional")
                if let v = node.value as? OptionalProtocol, v.isSome() {
                    SimpleNodeView(node: MirrorNodeViewModel(label: node.label, value: v.unwrap(), isUnwrappedOptional: true))
                    //Text("optional")
                } else {
                    OptionalNodeView(node: node)
//                    Text("nil")
                }
            case .collection:

                    CollectionNodeView(node: node)

            case .set:

                    CollectionNodeView(node: node)

            case .dictionary:

                    CollectionNodeView(node: node)

            default:
                Text("other other other")
            }
        } else {
            PrimitiveNodeView(node: node)
        }
    }
}

