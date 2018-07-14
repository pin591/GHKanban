/*
//  ExploreViewController.swift
//  GHKanbanViewController
//
//  Created by Ana Rebollo Pin on 13/7/18.
//  Copyright © 2018 Ana Rebollo Pin. All rights reserved.
//
// This class controls the behaivour of the ExploreViewController Tab
//
// TO-DO: This code will be exactly the same as the LocalViewController
// for this reason in a future refactor It's important create only one
// generic Component called RepoViewController to controls both tabs.
// The RepoViewController will receive filtered only the local repos.
*/

import UIKit

final class RepoModel {
    
    var name: String
    var author: String
    var isLocal: Bool
    
    init(name: String, author: String ) {
        self.name = name
        self.author = author
        self.isLocal = false
    }
}

class ExploreViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var repos = [RepoModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let repoWikiCat = RepoModel(name: "WikiCat", author: "Ana Rebollo")
        let repoWikiDog = RepoModel(name: "WikiDog", author: "Ana Rebollo")
        let repoWikiTravel = RepoModel(name: "WikiTravelt", author: "Ana Rebollo")
        let repoWikiChoc = RepoModel(name: "WikiChoc", author: "Ana Rebollo")
        repos = [repoWikiCat,repoWikiDog,repoWikiTravel,repoWikiChoc]
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
        return repos.count
    }
    
    func tableView(_ tableView: UITableView,
        cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reusableCell", for: indexPath)
        cell.textLabel?.text = repos[indexPath.row].name
        cell.detailTextLabel?.text = repos[indexPath.row].author
        return cell
    }
    
    func tableView(_ tableView: UITableView,
        trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let delete = deleteAction(at: indexPath)
        return UISwipeActionsConfiguration(actions: [delete])
    }
    
    func deleteAction(at indexPath: IndexPath) -> UIContextualAction {
        let action = UIContextualAction(style: .destructive, title:"Delete") {
            (action, view, completion) in
            self.repos.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .automatic)
            completion(true)
        }
        action.image = #imageLiteral(resourceName: "local")
        action.backgroundColor = .gray
        return action
    }
}

