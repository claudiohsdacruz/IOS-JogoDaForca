//
//  Palavra.swift
//  Jogo da Forca
//
//  Created by Claudio Henrique Soares da Cruz on 09/05/21.
//

import Foundation

class Palavra {
    
    var dica: String = ""
    var palavra: String = ""
    var palavraEDicas = [
        0: ["LARANJA", "fruta"],
        1: ["ABACAXI", "fruta"],
        2: ["ABOBRINHA", "legume"],
        3: ["BERINGELA", "legume"],
        4: ["ACELGA", "verdura"],
        5: ["REPOLHO", "verdura"]
    ]

    init() {
        sorteiaPalavra()
    }
    
    func sorteiaPalavra() {
        let indice: Int = Int.random(in: 0..<6)
        let grupo : Array<String> = palavraEDicas[indice]!
        self.palavra =  grupo[0]
        self.dica = grupo[1]
    }
    
    func getPalavra() -> String{
        return palavra
    }
    
    func getDica() -> String{
        return dica
    }
}
