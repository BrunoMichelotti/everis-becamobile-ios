//
//  DetalhesFilmeViewController.swift
//  weekly-popcorn
//
//  Created by Usuario Local on 6/6/20.
//  Copyright © 2020 everis. All rights reserved.
//

import UIKit
import AlamofireImage

class DetalhesFilmeViewController: UIViewController{
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var capaFilme: UIImageView!
    @IBOutlet weak var tituloFilme: UILabel!
    @IBOutlet weak var ratingFilme: UILabel!
    @IBOutlet weak var sinopseFilme: UILabel!

    // MARK: - IBAction
    
    @IBAction func botaoVoltar(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapeiaTela()
        
    }
    
    // MARK: - Atributos
    
    var caminhoImagemFilme: String? = ""
    var nomeFilme: String? = ""
    var rankFilme: String? = ""
    var sinopse: String? = ""

    // MARK: - Metodos
    
    func mapeiaTela(){
        tituloFilme.text = nomeFilme
        sinopseFilme.text = sinopse
        if let nota = rankFilme {ratingFilme.text = "Nota: \(nota)"}
        if let caminho = caminhoImagemFilme{
            let imagem = "https://image.tmdb.org/t/p/w500" + caminho
            guard let imagemUrl = URL(string: imagem) else {return}
            capaFilme.af_setImage(withURL: imagemUrl)
        }
    }
    
}


