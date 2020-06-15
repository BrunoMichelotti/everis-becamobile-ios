//
//  DetalhesFilmeViewController.swift
//  weekly-popcorn
//
//  Created by Usuario Local on 6/6/20.
//  Copyright © 2020 everis. All rights reserved.
//

import UIKit

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
    
    // MARK: - Variaveis
    
    var filme:Filme? = nil

    // MARK: - Metodos
    
    func mapeiaTela(){
        FilmesDetalhesViewModel(filme).mapeiaTela(imagem: capaFilme, tituloFilme: tituloFilme, ratingFilme: ratingFilme, sinopseFilme: sinopseFilme)
    }
    
    //A consulta da api de detalhes (getDetalhesFilme) foi implementada no projeto com sucesso conforme proposto ao exercicio porém, conforme analise do retorno, verifiquei que esta api de detalhes trazia algumas informacoes incompletas, ficando inviavel a listagem das informacoes necessarias para a tela de detalhes. Portanto decidi utilizar a api de consulta de lista de filmes cujo os dados estão completos
    
//    func  getDetalhesFilme(filme : Filme){
//
//        DetalhesFilmeAPI().consultaDetalhesFilme(filmeId: filme.id) { (json) in
//            guard let jsonData = DetalhesFilme.converteListaParaData(json) else {return}
//            guard let detalhesFilme = DetalhesFilme.decodificarFilme(jsonData) else {return}
//            self.tituloFilme.text = detalhesFilme.title
//            self.sinopseFilme.text = detalhesFilme.overview
//
//        }
//    }
    
    
}

