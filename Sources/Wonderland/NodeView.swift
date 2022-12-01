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
        if let extracted = node.extractedNode {
            ZStack { // SwiftUI doesn't like recursively placing views inside itself, need to wrap in something like a ZStack
                NodeView(node: extracted)
            }
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
                NavigationLink {
                    PrimitiveView(node: node)
                } label: {
                    EnumNodeView(node: node)
                }
            case .tuple:
                // each of the members (children) in the Tuple will be able to NavigationLink themselves if needed
                TupleNodeView(node: node)
            case .optional:
                if let v = node.value as? OptionalProtocol, v.isSome() {
                    ZStack { // SwiftUI doesn't like recursively placing views inside itself, need to wrap in something like a ZStack
                        NodeView(node: MirrorNodeViewModel(label: node.label, value: v.unwrap(), isUnwrappedOptional: true, wrapperTypeString: node.wrapperTypeString))
                    }
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
                    SetNodeView(node: node)
                }
            case .dictionary:
                NavigationLink {
                    MirrorView(node: node)
                } label: {
                    DictionaryNodeView(node: node)
                }
            default:
                Text("other")
            }
        } else {
            NavigationLink {
                PrimitiveView(node: node)
            } label: {
                PrimitiveNodeView(node: node)
            }
        }
    }
}

// MARK: -

//struct SimpleNodeView: View {
//
//    let node: MirrorNodeViewModel
//
//    init(node: MirrorNodeViewModel) {
//        self.node = node
//        print("init'd SimpleNodeView")
//    }
//
//    var body: some View {
//        let _ = print("in SimpleNodeView body")
//
//        if let extracted = node.extractedNode {
//            let _ = print("found extracted node")
//            ZStack { // SwiftUI doesn't like recursively placing views inside itself, need to wrap in something like a ZStack
//                SimpleNodeView(node: extracted)
//            }
//        } else
//        if let style = node.valueMirror.displayStyle {
//            let _ = print("found style:")
//            let _ = print(style)
//            switch style {
//
//            case .`struct`:
//
//                    StructNodeView(node: node)
//
//
//            case .`class`:
//
//                    ClassNodeView(node: node)
//
//            case .`enum`:
//                EnumNodeView(node: node)
//            case .tuple:
//                TupleNodeView(node: node)
//            case .optional:
//                if let v = node.value as? OptionalProtocol, v.isSome() {
//                    ZStack { // SwiftUI doesn't like recursively placing views inside itself, need to wrap in something like a ZStack
//                        SimpleNodeView(node: MirrorNodeViewModel(label: node.label, value: v.unwrap(), isUnwrappedOptional: true))
//                    }
//                } else {
//                    OptionalNodeView(node: node)
//                }
//            case .collection:
//
//                    CollectionNodeView(node: node)
//
//            case .set:
//
//                    CollectionNodeView(node: node)
//
//            case .dictionary:
//
//                    CollectionNodeView(node: node)
//
//            default:
//                Text("other other other")
//            }
//        } else {
//            PrimitiveNodeView(node: node)
//        }
//    }
//}

