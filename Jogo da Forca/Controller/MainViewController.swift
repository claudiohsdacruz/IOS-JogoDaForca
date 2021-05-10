//
//  ViewController.swift
//  Jogo da Forca
//
//  Created by Claudio Henrique Soares da Cruz on 09/05/21.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var lbDica: UILabel!
    @IBOutlet weak var lbQuantidadeLetras: UILabel!
    @IBOutlet weak var lbLetrasJogadas: UILabel!
    @IBOutlet weak var lbTentativas: UILabel!
    @IBOutlet weak var lbStatus: UILabel!
    @IBOutlet weak var tfLetra: UITextField!
    var forca: Forca!
    var sorteada: Palavra!
    
    @IBAction func btReiniciar(_ sender: Any) {
        self.viewDidLoad()
        self.atualizar()
    }
    

    
    @IBAction func btJogar(_ sender: Any) {
        let letra = Character(self.tfLetra.text!.uppercased())
        self.forca.jogar(letra: letra)
        self.atualizar()
        if (self.forca.terminou()){
            let rvc = self.storyboard?.instantiateViewController(identifier: "view_resultado") as! ResultadoViewController
            rvc.resultado = self.forca.resultado()
            self.present(rvc, animated: true, completion: nil)
        }
        self.tfLetra.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load")
        self.sorteada = Palavra()
        self.forca = Forca(palavra: sorteada.getPalavra(), dica: sorteada.getDica())
    }
    
    func atualizar() {
        self.lbDica.text = self.forca.dica
        self.lbQuantidadeLetras.text = "Quantidade: \(self.forca.palavra.count) letras"
        self.lbLetrasJogadas.text = String(self.forca.letrasJogadas)
        self.lbTentativas.text = "Tentativas Restantes : \(10 - self.forca.tentativas)"
        self.lbStatus.text = String(self.forca.status)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.atualizar()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
    }


}

