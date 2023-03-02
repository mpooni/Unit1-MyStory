//
//  DetailViewController.swift
//  MyStory
//
//  Created by Manasa Pooni on 3/1/23.
//

import UIKit

class DetailViewController: UIViewController {
    var folio: Folio?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let folio = folio {
        // Configure the folio image and dynamic labels

            detailImage.image = folio.image
            detailTextbox.text = folio.detailText;
        }
    }
    
    @IBOutlet weak var detailImage: UIImageView!
    
    @IBOutlet weak var detailTextbox: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
