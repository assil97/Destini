//
//  ViewController.swift
//  Destini
//
//  Created by Syed Shakeeb on 2019-05-26.
//  Copyright © 2019 Syed Shakeeb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stirytext: UILabel!
    @IBOutlet weak var firstbutton: UIButton!
    @IBOutlet weak var secondbutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        stirytext.text = "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat and soulless eyes opens the passenger door for you and says: 'Need a ride, boy?'"
        firstbutton.setTitle("I'll hop in. Thanks for the help!", for: .normal)
        secondbutton.setTitle("Well, I don't have many options. Better ask him if he's a murderer.", for: .normal)
        
    }

    @IBAction func story_a(_ sender: Any) {
        
        if firstbutton.currentTitle=="I'll hop in. Thanks for the help!" {
            
            stirytext.text="As you begin to drive, the stranger starts talking about the relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glove box. Inside you find the bloody knife, two severed fingers, and the cassette tape of Elton John. He reaches for the glove box."
            firstbutton.setTitle("I love Elton John! Hand him the cassette tape.", for: .normal)
            secondbutton.setTitle("It’s him or me. Take the knife and stab him.", for: .normal)
            
        }
        else if firstbutton.currentTitle == "At least he's honest. I'll climb in." {
            stirytext.text="As you begin to drive, the stranger starts talking about the relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glove box. Inside you find the bloody knife, two severed fingers, and the cassette tape of Elton John. He reaches for the glove box."
            firstbutton.setTitle("I love Elton John! Hand him the cassette tape.", for: .normal)
            secondbutton.setTitle("It’s him or me. Take the knife and stab him.", for: .normal)
    
        }
        else if firstbutton.currentTitle == "I love Elton John! Hand him the cassette tape." {
            stirytext.text="You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'"
        }
    }
    
    @IBAction func story_b(_ sender: Any) {
        
        if secondbutton.currentTitle=="Well, I don't have many options. Better ask him if he's a murderer." {
            stirytext.text="He nods slowly, unphased by the question."
            firstbutton.setTitle("At least he's honest. I'll climb in.", for: .normal)
            secondbutton.setTitle("Wait, I know how to change a tire.", for: .normal)
            
        }
        else if secondbutton.currentTitle == "Wait, I know how to change a tire." {
            stirytext.text = "What? Such a cop out! Did you know accidental traffic accidents are the second leading cause of accidental death for most adult age groups?"
        }
        else if secondbutton.currentTitle == "It’s him or me. Take the knife and stab him." {
            stirytext.text = "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in."
        }
    }
}

