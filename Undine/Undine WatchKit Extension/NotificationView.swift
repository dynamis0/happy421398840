//
//  NotificationView.swift
//  Undine WatchKit Extension
//
//  Created by 賈凱民 on 2020/01/17.
//  Copyright © 2020 賈凱民. All rights reserved.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        VStack {
            Text("Remember to")
            .font(.system(size: 18, weight: .regular, design: .rounded))
            Spacer()
            Text("Drink Water")
                .font(.system(size: 20, weight: .bold, design: .rounded))
            Spacer()
        }
    }
}

#if DEBUG
struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
#endif

