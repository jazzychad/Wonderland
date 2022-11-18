//
//  ViewUtil.swift
//  
//
//  Created by Chad Etzel on 11/17/22.
//

import Foundation
import SwiftUI

struct NodeViewBuilder: View {

    let node: MirrorNodeViewModel

    var body: some View {
        if let extracted = node.extractedNode {
            NodeViewBuilder(node: extracted)
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
                Text("tuple")
            case .optional:
                if let v = node.value as? OptionalProtocol, v.isSome() {
                    NodeViewBuilder(node: MirrorNodeViewModel(label: node.label, value: v.unwrap(), isUnwrappedOptional: true))
                } else {
                    OptionalNodeView(node: node)
                }
            default:
                Text("other")
            }
        } else {
            PrimitiveNodeView(node: node)
        }
    }
}
