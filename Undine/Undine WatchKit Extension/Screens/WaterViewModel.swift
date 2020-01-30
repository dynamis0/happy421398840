//
//  WaterViewModel.swift
//  Undine WatchKit Extension
//
//  Created by 賈凱民 on 2020/01/17.
//  Copyright © 2020 賈凱民. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

class WaterViewModel: ObservableObject {
    @Published
    var drinkingAmount: Double = 250.0
    var drinkingTarget = 500.0
    var waterLevel: CGFloat = .zero
    var NwNumber = arc4random() % 2

    var isGoalReached: Bool {
        round(drinkingTarget) == .zero
    }
    
    var targetText: some View {
        VStack{
            if round(drinkingTarget) == .zero{
                if NwNumber == 1{
                    Image("komatsu_dog1").renderingMode(.original)
                }
                if NwNumber == 0{
                    Image("cat").renderingMode(.original)
                }
            }else{
                Text("Target: \(drinkingTarget.toMilliliters())")
            }
        }
    }
    
    var minimumInterval: Double {
        min(10, drinkingTarget)
    }
    
    var drinkText: String {
        drinkingAmount.toMilliliters()
    }
    
    func didTapDrink() {
        guard floor(drinkingTarget - drinkingAmount) >= .zero else { return }
        drinkingTarget -= round(drinkingAmount)
        waterLevel += CGFloat(drinkingAmount / 10)
        drinkingAmount = min(drinkingAmount, drinkingTarget)
    }
    
    func didTapReset() {
        waterLevel = .zero
        drinkingTarget = 250
        drinkingAmount = 250
        NwNumber = arc4random() % 2
    }
}


