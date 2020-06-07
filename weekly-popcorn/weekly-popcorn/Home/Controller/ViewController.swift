//
//  ViewController.swift
//  weekly-popcorn
//
//  Created by Usuario Local on 6/4/20.
//  Copyright © 2020 everis. All rights reserved.
//

import UIKit

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
    // MARK: - Atributos
    
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
    
}
