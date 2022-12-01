//
//  ClassNodeView.swift
//  
//
//  Created by Chad Etzel on 11/15/22.
//

import Foundation
import SwiftUI

struct ClassNodeView: View {

    let node: MirrorNodeViewModel

    var body: some View {
        _BaseNodeView(node: node, objectTypeLabel: "class", accentColor: .red)
    }
}
