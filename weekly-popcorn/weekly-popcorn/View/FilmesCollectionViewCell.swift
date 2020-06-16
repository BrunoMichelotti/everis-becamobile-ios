//
//  FilmesCollectionViewCell.swift
//  weekly-popcorn
//
//  Created by Usuario Local on 6/4/20.
//  Copyright © 2020 everis. All rights reserved.
//

import UIKit
import AlamofireImage

class FilmesCollectionViewCell: UICollectionViewCell{
    
    // MARK: - IBOulet
    
    @IBOutlet weak var ImagemFilme: UIImageView!
    
    // MARK: - Variaveis
    
    let viewModel = FilmesCollectionViewCellViewModel()

    
    // MARK: - Metodos
    
    func atribuiImagem(posterPath: String){
        viewModel.mapeiaImagem(imagem: ImagemFilme, posterpath: posterPath)
    }
    
    func ajusteLayout(){
        layer.borderWidth = viewModel.borderWidth
        layer.borderColor = viewModel.borderColor
        layer.cornerRadius = viewModel.cornerRadius
    }
    
    func ajusteAcessibilidade(filme : Filme, collection : UICollectionViewCell){
        
    }
    
}
