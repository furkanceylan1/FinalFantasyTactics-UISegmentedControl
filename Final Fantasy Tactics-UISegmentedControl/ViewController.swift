//
//  ViewController.swift
//  Final Fantasy Tactics-UISegmentedControl
//
//  Created by Furkan Ceylan on 3.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let segment = UISegmentedControl()
    let imageView = UIImageView()
    let charactersNameLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        segment.insertSegment(withTitle: "🗡", at: 0, animated: true)
        segment.insertSegment(withTitle: "🔮", at: 1, animated: true)
        segment.insertSegment(withTitle: "🛡", at: 2, animated: true)
        segment.insertSegment(withTitle: "⚔️", at: 3, animated: true)
        segment.selectedSegmentIndex = 0
        if segment.selectedSegmentIndex == 0{
            imageView.image = UIImage(named: "Ramza")
            charactersNameLabel.text = "Ramza Beoulve"
        }
        segment.frame = CGRect(x: width * 0.5 - (width * 0.8 / 2), y: height * 0.9, width: width * 0.8, height: 34)
        segment.addTarget(self, action: #selector(indexChanged), for: .valueChanged)
        view.addSubview(segment)
        
        imageView.frame = CGRect(x: width * 0.6 - (width * 0.8 / 2), y: height * 0.1 , width: width * 0.6, height: height * 0.5)
        view.addSubview(imageView)
        
        charactersNameLabel.textColor = .systemBlue
        charactersNameLabel.textAlignment = NSTextAlignment.center
        charactersNameLabel.frame = CGRect(x: width * 0.5 - (width * 0.8 / 2), y: height * 0.1 + (height * 0.5) + 20, width: width * 0.8, height: 34)
        view.addSubview(charactersNameLabel)
    }
    
    @objc func indexChanged(){
        switch segment.selectedSegmentIndex{
        case 0:
            imageView.image = UIImage(named: "Ramza")
            charactersNameLabel.text = "Ramza Beoulve"
            break
        case 1:
            imageView.image = UIImage(named: "Alma")
            charactersNameLabel.text = "Alma Beoulve"

            break
        case 2:
            imageView.image = UIImage(named: "Agrias")
            charactersNameLabel.text = "Agrias Meşesi"
            break
        case 3:
            imageView.image = UIImage(named: "Orlandu")
            charactersNameLabel.text = "Cidolfus Orlandu"
            break
        default:
            break
        }
    }


}

