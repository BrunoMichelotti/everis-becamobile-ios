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
    
    @IBOutlet weak var ImagemFilme: UIImageView!
    
    
    func setaValor(filmeAtual: Filme, celulaAtual : FilmesCollectionViewCell ){
        
        celulaAtual.layer.borderWidth = 0.5
        celulaAtual.layer.borderColor = UIColor(red: 85.0/255.0, green: 85.0/255.0, blue: 85.0/255.0, alpha: 1).cgColor
        celulaAtual.layer.cornerRadius = 2
        
        let imagem = "https://image.tmdb.org/t/p/w500" + filmeAtual.posterPath
        guard let imagemUrl = URL(string: imagem) else {return}
        ImagemFilme.af_setImage(withURL: imagemUrl)
    }
 
}
