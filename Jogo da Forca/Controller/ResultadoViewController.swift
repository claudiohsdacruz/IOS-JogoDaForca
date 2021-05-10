//
//  ResultadoViewController.swift
//  Jogo da Forca
//
//  Created by Claudio Henrique Soares da Cruz on 09/05/21.
//

import UIKit

class ResultadoViewController: UIViewController {

    @IBOutlet weak var lbResultado: UILabel!
    var resultado: String?
        
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.lbResultado.text = self.resultado
    }
    @IBAction func btVoltar(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}



