//
//  DetalhesFilmeAPI.swift
//  weekly-popcorn
//
//  Created by Usuario Local on 6/7/20.
//  Copyright © 2020 everis. All rights reserved.
//

import UIKit
import Alamofire

class DetalhesFilmeAPI: NSObject {

    // MARK: - Variaveis
    
    var url: String = ""
    
    // MARK: - Metodos
    
    func consultaDetalhesFilme(filmeId: Int, sucesso:@escaping(_ filmes: Dictionary<String, Any>) -> Void) -> Void{
        url = "https://api.themoviedb.org/3/movie/\(filmeId)?api_key=cf692353d76cfc50bc34648eb54b621f&language=pt-BR"
        Alamofire.request(url, method: .get).responseJSON { (response) in
            switch response.result {
            case .success:
                print(response)
                guard let respostaDetalhesFilme = (response.result.value as? [String:Any]) else {return}
                sucesso(respostaDetalhesFilme)
                break
            case .failure:
                print(response.error!)
                break
            }
        }
    }
    
}
