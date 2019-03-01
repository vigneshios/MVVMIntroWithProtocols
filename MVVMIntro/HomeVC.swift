//
//  HomeVC.swift
//  MVVMIntro
//
//  Created by Vignesh on 01/03/19.
//  Copyright © 2019 Vignesh. All rights reserved.
//

import UIKit

protocol HomeView: class {
    func configureSlider(Value: String) -> ()
}

class HomeVC: UIViewController {

    // Outlets
    @IBOutlet weak var lblText: UILabel!
    
    // ViewModel
    lazy var viewModel : HomeViewModel? = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel?.delegate = self

       print("Hola MVVM")
    }
    

   
    @IBAction func sliderMoved(_ sender: UISlider) {
        
        //lblText.text = "\(sender.value)"
        
        viewModel?.onSliderValueChanged(value: "\(sender.value)")
        
    }
    
}

extension HomeVC: HomeView {
    func configureSlider(Value: String) {
        print("Configure val in VC -- \(Value)")
        lblText.text = Value
    }
    
    
}
