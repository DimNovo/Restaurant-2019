//
//  MenuItemDetailViewController.swift
//  Restaurant 2019
//
//  Created by Dmitry Novosyolov on 15/04/2019.
//  Copyright © 2019 Dmitry Novosyolov. All rights reserved.
//

import UIKit

class MenuItemDetailViewController: UIViewController
{
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var detailTextLabel: UILabel!
    @IBOutlet weak var addToOrderButton: UIButton!
    
    var menuItem: MenuItem!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI()
    {
        titleLabel.text = menuItem.name
        priceLabel.text = String(format: "$%.2f", menuItem.price)
        detailTextLabel.text = menuItem.detailText
        addToOrderButton.layer.cornerRadius = 5.0
        
        MenuController.shared.fetchImage(url: menuItem.imageURL) { image in
            DispatchQueue.main.async { self.imageView.image = image }
        }
    }
    
    @IBAction func orderButtonTapped(_ sender: UIButton)
    {
        UIView.animate(withDuration: 0.3)
        {
            sender.transform = CGAffineTransform(scaleX: 3, y: 3)
            sender.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            sender.transform = CGAffineTransform.identity
            sender.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        }
    }
}
