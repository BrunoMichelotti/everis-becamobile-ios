//
//  FilmesCollectionViewCellViewModel.swift
//  weekly-popcorn
//
//  Created by Usuario Local on 6/16/20.
//  Copyright © 2020 everis. All rights reserved.
//

import Foundation
import AlamofireImage

class FilmesCollectionViewCellViewModel{
    
    // MARK: - Variaveis
    
    let borderWidth : CGFloat = 0.5
    let borderColor = UIColor(red: 85.0/255.0, green: 85.0/255.0, blue: 85.0/255.0, alpha: 1).cgColor
    let cornerRadius : CGFloat = 2
    
    // MARK: - Metodos
    
    func mapeiaImagem(imagem : UIImageView, posterpath: String){
        if let urlImagem = FilmeAPI().urlImagem(poster: posterpath){
            imagem.af_setImage(withURL: urlImagem)
        }
        
    }
    
    func ajusteAcessibilidade(filme: Filme, collection: FilmesCollectionViewCell){
        
        if let titulo = filme.title {
            collection.ImagemFilme.accessibilityLabel = titulo
        }else{
            if let titulo = filme.name{
            collection.ImagemFilme.accessibilityLabel = titulo
            }
        }
    }
    
}
    
    

