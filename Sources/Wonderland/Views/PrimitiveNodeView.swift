//
//  PrimitiveNodeView.swift
//  
//
//  Created by Chad Etzel on 11/15/22.
//

import Foundation
import SwiftUI

struct PrimitiveNodeView: View {
    let node: MirrorNodeViewModel

    var body: some View {
        _BaseNodeView(node: node, objectTypeLabel: nil, accentColor: .black)
    }
}
