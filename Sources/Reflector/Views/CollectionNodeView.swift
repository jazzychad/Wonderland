//
//  CollectionNodeView.swift
//  
//
//  Created by Chad Etzel on 11/19/22.
//

import SwiftUI

struct CollectionNodeView: View {

    let node: MirrorNodeViewModel

    var body: some View {
        VStack(alignment: .leading) {

//            HStack {
//                PillLabel(label: "collection", bgColor: .pink)
//                if node.isUnwrappedOptional {
//                    PillLabel(label: "optional", bgColor: Color(uiColor: .lightGray))
//                }
//            }
            TagsView(label: "collection", bgColor: .pink, isUnwrappedOptional: node.isUnwrappedOptional)

//            if let typeString = node.wrapperTypeString {
//                Text("@\(typeString)")
//                    .font(.system(.callout))
//                    .fontWeight(.semibold)
//                    .foregroundColor(.red)
//            }
            PropertyWrapperLabel(node: node)
//            HStack {
//
//                Text("\(node.label ?? "<<none>>")")
//                    .fontWeight(.bold)
//                Text(":")
//                Text("\(String(describing: node.valueMirror.subjectType))\(node.isUnwrappedOptional ? "?" : "")")
//                Spacer()
//            }
            LabelTypeView(node: node)

        }
    }
}
