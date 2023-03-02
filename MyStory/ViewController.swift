//
//  ViewController.swift
//  MyStory
//
//  Created by Manasa Pooni on 3/1/23.
//

import UIKit

class ViewController: UIViewController {
    
    let intro = Folio(image: UIImage(named: "squidwardImage")!, detailText: "Hello! My name is Squidward, and I unfortunately work at the Krusty Krab, where I have to deal with an idiotic sponge and a cheapskate Krab. I love fine dining and listening to Kelpy G. In a perfect world I would not be living next to Spongebob and Patrick!");
    let friends = Folio(image: UIImage(named: "friendsImage")!, detailText: "I guess I would say my friends are that yellow buffoon Spongebob and dumb star, Patrick considering they are the two people always invading my space. Perhaps, maybe Cheapskate Krabs as well. Oh, and let's not forget about that squirrel who's from Texas called Sandy Cheeks.");
    let place = Folio(image: UIImage(named: "bikinibottomImage")!, detailText: "I live in the Bikini Bottom with a bunch of lunatics. There's always something crazy happening there but at least I can stay inside my beautiful home.");
    let fun = Folio(image: UIImage(named: "clarinetImage")!, detailText: "I absolutely love playing my clarient for fun. It is the most divine sound and I cant imagine my live without good old Clari. It also helps me tune out those rascals living next to me.");
    
    // Array for storing folios
    var folios: [Folio] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Store folio models
        folios = [intro, friends, place, fun]
    }
    
    @IBAction func didTapSquidward(_ sender: UITapGestureRecognizer) {
        print("This button works")
        if let tappedView = sender.view {
             performSegue(withIdentifier: "detailSegue", sender: tappedView)
         }
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("THIS WORKS")
        
        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            
            if tappedView.tag == 0 {
                detailViewController.folio = folios[0]
            } else if tappedView.tag == 1 {
                detailViewController.folio = folios[1]
            } else if tappedView.tag == 2 {
                detailViewController.folio = folios[2]
            } else if tappedView.tag == 3 {
                detailViewController.folio = folios[3]
            } else {
                print("no Page was tapped, please check your selection.")
            }
        }
    }
    
}
