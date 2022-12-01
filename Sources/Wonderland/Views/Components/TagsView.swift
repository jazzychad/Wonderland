//
//  TagsView.swift
//  
//
//  Created by Chad Etzel on 11/21/22.
//

import SwiftUI

struct TagsView: View {

    let label: String?
    let bgColor: Color
    let isUnwrappedOptional: Bool

    var body: some View {
        HStack {
            //Spacer()

            if let label = label {
                PillLabel(label: label, bgColor: bgColor)
            }
            if isUnwrappedOptional {
                PillLabel(label: "optional", bgColor: Color(uiColor: .lightGray))
            }

        }
    }
}

