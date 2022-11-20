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
