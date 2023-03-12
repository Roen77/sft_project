//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by 한태경 on 2023/03/12.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes = [Quote(contents: "죽음을 두려워하는 나머지 삶을 시작조차 못하는 사람이 많다.", name: "벤다이크"),
                  Quote(contents: "두려워 말라", name: "비용"),
                  Quote(contents: "살아간다..", name: "아인스")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tabQuoteGenderatorButton(_ sender: Any) {
        
        let random = Int( arc4random_uniform(3)) // 0~ 2 사이의 난수
        let quote = quotes[random]
        
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
}

