//
//  PrimitiveView.swift
//  
//
//  Created by Chad Etzel on 11/21/22.
//

import SwiftUI

struct PrimitiveView: View {

    let node: MirrorNodeViewModel

    var body: some View {
        Text(String(describing: node.value))
    }
}

