//
//  ViewController.swift
//  weekly-popcorn
//
//  Created by Usuario Local on 6/4/20.
//  Copyright © 2020 everis. All rights reserved.
//

import UIKit
import AlamofireImage

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var colecaoFilmes: UICollectionView!
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colecaoFilmes.dataSource = self
        colecaoFilmes.delegate = self
        getFilme()
    }
    // MARK: - Variaveis
    
    var paglistaFilmes: Array<Filme> = []
    
    
    // MARK: - Metodos
    
    func getFilme(){
      
        FilmeAPI().consultaFilmes(sucesso: {
            (json) in
            guard let jsonData = Filme.converteListaParaData(json) else {return}
            guard let listaFilme = Filme.decodificarFilme(jsonData) else {return}
            self.paglistaFilmes = listaFilme
            self.colecaoFilmes.reloadData()
        })
        
    }
    
    //A consulta da api de detalhes (getDetalhesFilme) foi implementada no projeto com sucesso conforme proposto ao exercicio porém conforme analise do retorno verifiquei que esta api de detalhes trazia algumas informacoes incompletas, ficando inviavel a listagem das informacoes necessarias para a tela de detalhes. Portanto decidi utilizar a api de consulta de lista de filmes cujo os dados estão completos
    
    func  getDetalhesFilme(controller : DetalhesFilmeViewController, filme : Filme){
        
        DetalhesFilmeAPI().consultaDetalhesFilme(filmeId: filme.id) { (json) in
            
            guard let jsonData = DetalhesFilme.converteListaParaData(json) else {return}
            
            guard let detalhesFilme = DetalhesFilme.decodificarFilme(jsonData) else {return}
            
            controller.nomeFilme = detalhesFilme.title
            controller.sinopse = detalhesFilme.overview
            
            self.present(controller, animated: true,completion: nil)
            
        }
    }
    
    // MARK: - Navigation
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return paglistaFilmes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celulaFilme = collectionView.dequeueReusableCell(withReuseIdentifier: "celulaFilme", for: indexPath) as! FilmesCollectionViewCell
        let filmeAtual = paglistaFilmes[indexPath.item]
        celulaFilme.setaValor(filmeAtual: filmeAtual, celulaAtual: celulaFilme)
        return celulaFilme
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width/3-15, height: 160)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let filme = paglistaFilmes[indexPath.item]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "detalhesFilme") as! DetalhesFilmeViewController
        //getDetalhesFilme(controller: controller, filme: filme)
        
        if filme.title == nil {
            controller.nomeFilme = filme.name
            }else{
            controller.nomeFilme = filme.title
        }
        controller.sinopse = filme.overview
        controller.rankFilme = String(filme.voteAverage)
        controller.caminhoImagemFilme = filme.posterPath
        self.present(controller, animated: true,completion: nil)
    
    }
    
    
}
