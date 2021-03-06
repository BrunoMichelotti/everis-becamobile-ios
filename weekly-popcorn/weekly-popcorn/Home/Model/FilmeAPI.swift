//
//  FilmeAPI.swift
//  weekly-popcorn
//
//  Created by Usuario Local on 6/4/20.
//  Copyright © 2020 everis. All rights reserved.
//

import UIKit
import Alamofire


class FilmeAPI: NSObject {
    
    // MARK: - Variaveis
    
    var listaFilme:Array<Filme> = []

    // MARK: - Metodos
    
    func consultaFilmes( sucesso:@escaping(_ filmes: Array<Dictionary<String, Any>>) -> Void) -> Void {
        Alamofire.request("https://api.themoviedb.org/3/trending/all/week?api_key=cf692353d76cfc50bc34648eb54b621f&language=pt-BR", method: .get).responseJSON { (response) in
            switch response.result {
                case .success:
                    guard let resposta = (response.result.value as? [String:Any]) else {return}
                    guard let respostaListaFilmes = resposta["results"] as? [[String:Any]] else {return}
                    sucesso(respostaListaFilmes)
                break
                case .failure:
                    print(response.error!)
                break
            }
        }
    }
    
    func urlImagem(poster :String) -> URL?{
        let imagem = "https://image.tmdb.org/t/p/w500" + poster
        if let imagemUrl = URL(string: imagem){
            return imagemUrl
        }
        else {return nil}
    }
    
    
}
