//
//  MirrorView.swift
//  Reflector
//
//  Created by Chad Etzel on 9/8/22.
//

import SwiftUI


public struct MirrorNavRoot: View {

    public let subject: Any

    public init(subject: Any) {
        self.subject = subject
    }

    public var body: some View {
        NavigationView {
            MirrorView(subject: subject)
                .navigationTitle("Subject")
        }
    }

}



public struct MirrorView: View {

    let subject: Any
    let mirror: Mirror
    let children: [MirrorNodeViewModel]

    public init(subject: Any) {
        self.subject = subject
        self.mirror = Mirror(reflecting: subject)
        self.children = self.mirror.children.map { MirrorNodeViewModel(label: $0.label, value: $0.value) }
    }

    public var body: some View {
        List {
            ForEach(children) { child in
                HStack {

//                    if let style = child.valueMirror.displayStyle {
//                        switch style {
//                        case .`struct`:
//                            NavigationLink {
//                                MirrorView(subject: child.value)
//                            } label: {
//                                StructNodeView(node: child)
//                            }
//
//                        case .`class`:
//                            NavigationLink {
//                                MirrorView(subject: child.value)
//                            } label: {
//                                ClassNodeView(node: child)
//                            }
//                        case .`enum`:
//                            EnumNodeView(node: child)
//                        case .tuple:
//                            Text("tuple")
//                        case .optional:
//                            OptionalNodeView(node: child)
//                        default:
//                            Text("other")
//                        }
//                    } else {
//                        PrimitiveNodeView(node: child)
//                    }
                    NodeView(node: child)
                }
            }
        }
        .navigationTitle(String(describing: mirror.subjectType))
    }


}
