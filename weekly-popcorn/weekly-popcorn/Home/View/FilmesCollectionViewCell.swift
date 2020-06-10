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
    
    // MARK: - Metodos
    
    func atribuiImagem(imagemFilme: String){
        if let imagem = FilmeAPI().urlImagem(poster: imagemFilme){
            ImagemFilme.af_setImage(withURL: imagem)
        }
    }
    
    func ajusteLayout(celulaAtual: FilmesCollectionViewCell){
        celulaAtual.layer.borderWidth = 0.5
        celulaAtual.layer.borderColor = UIColor(red: 85.0/255.0, green: 85.0/255.0, blue: 85.0/255.0, alpha: 1).cgColor
        celulaAtual.layer.cornerRadius = 2
    }
    
 
}
