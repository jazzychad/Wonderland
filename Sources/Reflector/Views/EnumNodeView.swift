//
//  EnumNodeView.swift
//  
//
//  Created by Chad Etzel on 11/15/22.
//

import Foundation
import SwiftUI

struct EnumNodeView: View {

    let node: MirrorNodeViewModel

    var body: some View {
        _BaseNodeView(node: node, objectTypeLabel: "enum", accentColor: .purple)
    }
}
