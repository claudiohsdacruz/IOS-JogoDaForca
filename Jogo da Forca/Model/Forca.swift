//
//  Forca.swift
//  Jogo da Forca
//
//  Created by Claudio Henrique Soares da Cruz on 09/05/21.
//

import Foundation

class Forca {
    var palavra: Array<Character>
    var status: Array<Character>
    var dica: String
    var tentativas: Int
    var letrasJogadas: Array<Character>
    
    init(palavra:String, dica: String){
        self.palavra = Array(palavra)
        self.dica = dica
        self.tentativas = 0
        self.letrasJogadas = Array()
        self.status = Array(repeating: "_", count: self.palavra.count)
    }
    
    func jogadaValida(letra : Character) -> Bool {
        return !self.letrasJogadas.contains(letra) && self.palavra.contains(letra)
            && self.tentativas < 10
        
    }
    
    func jogar(letra:Character) {
        if(jogadaValida(letra:letra)){
            self.letrasJogadas.append(letra)
            for i in 0..<self.palavra.count{
                if (self.palavra[i] == letra){
                    self.status[i] = letra
                }
            }
        } else {
            self.letrasJogadas.append(letra)
            self.tentativas += 1
        }
    }
    
    func terminou() -> Bool {
        return self.palavra == self.status || self.tentativas >= 10
    }
    
    func resultado() -> String {
        if (self.terminou()) {
            if (self.palavra == self.status) {
                return "Ganhou!"
            }else {
                return "Perdeu!"
            }
        }else{
            return "O jogo não terminou"
        }
    }
}

