//
//  ViewController.swift
//  Meus Filmes
//
//  Created by Victor Rodrigues Novais on 26/04/20.
//  Copyright © 2020 Victoriano. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var filmes: [Filme] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filme: Filme
        
        filme = Filme(title: "007 - Spectro", description: "Descrição 1", image: #imageLiteral(resourceName: "filme1.png") )
        filmes.append( filme )
        
        filme = Filme(title: "Star Wars", description: "Descrição 2", image: #imageLiteral(resourceName: "filme2"))
        filmes.append( filme )
        
        filme = Filme(title: "Impacto Mortal", description: "Descrição 3", image: #imageLiteral(resourceName: "filme3"))
        filmes.append( filme )
        
        filme = Filme(title: "Deadpool", description: "Descrição 4", image: #imageLiteral(resourceName: "filme4"))
        filmes.append( filme )
        
        filme = Filme(title: "O regreso", description: "Descrição 5", image: #imageLiteral(resourceName: "filme5"))
        filmes.append( filme )
        
        filme = Filme(title: "A Herdeira", description: "Descrição 6", image: #imageLiteral(resourceName: "filme6") )
        filmes.append( filme )
        
        filme = Filme(title: "Caçadores de emoção", description: "Descrição 7", image: #imageLiteral(resourceName: "filme7"))
        filmes.append( filme )
        
        filme = Filme(title: "Regresso do mal", description: "Descrição 8", image: #imageLiteral(resourceName: "filme8"))
        filmes.append( filme )
        
        filme = Filme(title: "Tarzan", description: "Descrição 9", image: #imageLiteral(resourceName: "filme9"))
        filmes.append( filme )
        
        filme = Filme(title: "Hardcore", description: "Descrição 10", image: #imageLiteral(resourceName: "filme10"))
        filmes.append( filme )
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return filmes.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let filme: Filme = filmes[indexPath.row]
        let celulaReuso = "celulaReuso"
        
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath) as! FilmeCelula
        celula.titleLabel.text = filme.title
        celula.descriptionLabel.text = filme.description
        celula.filmeImageView.image = filme.image
        
        celula.filmeImageView.layer.cornerRadius = 20
        celula.filmeImageView.clipsToBounds = true
        
        //celula.textLabel?.text = filme.title
        //celula.imageView?.image = filme.image
        
        return celula
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detailFilme" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let filmeSelecionado = self.filmes[ indexPath.row ]
                let vcDestino = segue.destination as! DetailsFilmeViewController
                vcDestino.filme = filmeSelecionado
            }
        }
    }

}

