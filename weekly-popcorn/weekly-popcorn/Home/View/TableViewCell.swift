//
//  TableViewCell.swift
//  weekly-popcorn
//
//  Created by Usuario Local on 6/4/20.
//  Copyright © 2020 everis. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var labelTitulo: UILabel!
    @IBOutlet weak var imagemFilme: UIImageView!
    
    
    
    func configuraCelula(filme: Filme){
        labelTitulo.text = filme.titulo
        imagemFilme.image = UIImage(named: filme.caminhoDaImagem)
        //imagemFilme.layer.cornerRadius = 5
        //imagemFilme.layer.masksToBounds = true
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
