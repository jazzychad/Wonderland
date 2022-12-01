//
//  StructNodeView.swift
//  
//
//  Created by Chad Etzel on 11/15/22.
//

import Foundation
import SwiftUI

struct StructNodeView: View {

    let node: MirrorNodeViewModel

    var body: some View {
        _BaseNodeView(node: node, objectTypeLabel: "struct", accentColor: .green)
    }
}
