//
//  HostingController.swift
//  Undine WatchKit Extension
//
//  Created by 賈凱民 on 2020/01/17.
//  Copyright © 2020 賈凱民. All rights reserved.
//

import WatchKit
import Foundation
import SwiftUI

class HostingController: WKHostingController<WaterView> {
    let viewModel = WaterViewModel()
    override var body: WaterView {
        WaterView(viewModel: viewModel)
    }
}
