//
//  PillLabel.swift
//  
//
//  Created by Chad Etzel on 11/15/22.
//

import Foundation
import SwiftUI

struct PillLabel: View {

    let label: String
    let bgColor: Color

    var body: some View {
        Text(self.label)
            .font(.system(.caption))
            .fontWeight(.bold)
            .padding(3)
            .foregroundColor(.white)
            .background(self.bgColor)
            .cornerRadius(5)
    }
}
