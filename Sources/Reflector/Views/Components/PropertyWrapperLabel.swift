//
//  PropertyWrapperLabel.swift
//  
//
//  Created by Chad Etzel on 11/21/22.
//

import SwiftUI

struct PropertyWrapperLabel: View {

    let node: MirrorNodeViewModel

    var body: some View {
        if let typeString = node.wrapperTypeString {
            Text("@\(typeString)")
                .font(.system(.callout))
                .fontWeight(.semibold)
                .foregroundColor(.red)
        } else {
            EmptyView()
        }
    }
}

