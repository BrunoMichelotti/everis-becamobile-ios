//
//  FilmesDetalhesViewModel.swift
//  weekly-popcorn
//
//  Created by Usuario Local on 6/15/20.
//  Copyright © 2020 everis. All rights reserved.
//

import Foundation
import AlamofireImage

class FilmesDetalhesViewModel{
    
    // MARK: Variaveis
    
    var filme: Filme?
    
    // MARK: Construtor
    
    init(_ filme: Filme?) {
        self.filme = filme
    }
    
    // MARK: - Metodos
    
    func mapeiaTela(imagem : UIImageView,tituloFilme: UILabel, ratingFilme: UILabel,sinopseFilme: UILabel ){
        guard let filmeSelecionado = filme else {return}
        ratingFilme.text = ("Nota: " + String(filmeSelecionado.voteAverage))
        if filmeSelecionado.title == nil {
            tituloFilme.text = filmeSelecionado.name
        }else{
            tituloFilme.text = filmeSelecionado.title
        }
        if let capa = FilmeAPI().urlImagem(poster: filmeSelecionado.posterPath){
            imagem.af_setImage(withURL: capa)
        }
        sinopseFilme.text = filmeSelecionado.overview
    }
    
    
}
