//
//  MenuView.swift
//  Undine WatchKit Extension
//
//  Created by 賈凱民 on 2020/01/17.
//  Copyright © 2020 賈凱民. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    @State var target: Double
    var newTargetSelected: (Double) -> Void
    var body: some View {
        VStack {
            Text("Enter your weight")
                .font(.system(.headline, design: .rounded))
            Spacer()
            Text("\(Int(target))kg")
                .font(.system(size: 24, weight: .semibold, design: .rounded))
                .foregroundColor(.init(red: 0, green: 0.8, blue: 1))
            Spacer()
            Button(action: {
                self.newTargetSelected(self.target * 43.6 - 300)
            }) {
                Text("Save")
            }
            .padding(.horizontal, 20)
        }
        .focusable()
        .digitalCrownRotation($target, from: 10.0, through: 300.0, by: 1)
    }
}
    
struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(target: 50) { target in
            print(target)
        }
    }
}
