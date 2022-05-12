//
//  ViewController.swift
//  CombineFull
//
//  Created by Вячеслав Квашнин on 12.05.2022.
//

import UIKit
import Combine

class ViewController: UIViewController {

    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var pressButton: UIButton!
    
    @Published var textValue: String? = "Click the button"
    
    var cancellabel: AnyCancellable?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cancellabel = $textValue
            .receive(on: DispatchQueue.main)
            .assign(to: \.text, on: valueLabel)
    }

    @IBAction func pressedButton(_ sender: Any) {
        textValue = "Hello World!"
    }
    
}

