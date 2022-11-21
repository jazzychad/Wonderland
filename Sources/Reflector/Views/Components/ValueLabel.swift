//
//  ValueLabel.swift
//  
//
//  Created by Chad Etzel on 11/21/22.
//

import SwiftUI

struct ValueLabel: View {

    let node: MirrorNodeViewModel
    let displayString: String

    init(node: MirrorNodeViewModel) {
        self.node = node
        if let style = node.valueMirror.displayStyle {
            switch style {
            case .`enum`:
                displayString = ".\(String(describing: node.value))"
            default:
                displayString = String(describing: node.value)
            }
        } else {
            displayString = String(describing: node.value)
        }
    }

    var body: some View {
        Text(displayString)
            .font(.system(.body, design: .monospaced))
            .padding(2)
            .foregroundColor(.black)
            .lineLimit(nil)
            .overlay(
                RoundedRectangle(cornerRadius: 3)
                    .stroke(.black, lineWidth: 1/UIScreen.main.scale)
            )
            .background(Color(uiColor: .lightGray))
            .cornerRadius(3)
    }
}
