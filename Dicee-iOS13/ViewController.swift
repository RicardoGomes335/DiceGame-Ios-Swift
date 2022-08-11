//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Aqui referencio a UI dos Elementos imagemDice
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    //Declaro uma variavel para o dado esquerdo
    var leftDiceNumber = 1
    //Declaro uma variavel para o dado direito
    var rightDiceNumber = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Aqui troca as imagens dice6 e dice2 = #imageLiteral()

    }

    // Funcao dobotão jogar
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageView1.image = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")] [leftDiceNumber]
        diceImageView2.image = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")] [rightDiceNumber]
        
        //Icrementa a leftDiceNumber + 1
        leftDiceNumber = leftDiceNumber + 1
        
        //Decrementa a rightDiceNumber + 1
        rightDiceNumber = rightDiceNumber - 1
    }
}

