//
//  File.swift
//  Undine WatchKit Extension
//
//  Created by 賈凱民 on 2020/01/17.
//  Copyright © 2020 賈凱民. All rights reserved.
//

import Foundation

extension Double {
    func toMilliliters() -> String {
        "\(Int(self).description)ml"
    }
}
