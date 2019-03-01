//
//  HomeViewModel.swift
//  MVVMIntro
//
//  Created by Vignesh on 01/03/19.
//  Copyright © 2019 Vignesh. All rights reserved.
//

import Foundation
protocol ViewDelegate {
    func onSliderValueChanged(value: String) -> (Void)
}

protocol ViewModelPresentable {
    
    var sliderValue: String? {get}
}

class HomeViewModel: ViewModelPresentable, ViewDelegate {
    
    var sliderValue: String?
    weak var delegate : HomeView?
    
    func onSliderValueChanged(value: String) {
        print("slider value received in viewModel = \(value)")
        delegate?.configureSlider(Value: value)
    }
    
}
