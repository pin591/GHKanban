/*
//  RepoTableViewCell.swift
//  GHKanbanViewController
//
//  Created by Ana Rebollo Pin on 14/7/18.
//  Copyright © 2018 Ana Rebollo Pin. All rights reserved.
//
// This class allows to create a custom cell inside the ExpoloreViewController
// and NextViewController TableView to show all the repoDetails
//
// TO-DO: In this first iteration not all the repo propeties will
//  be used. Only the title and author, but in
//  the future the other paramenters will be shown in the final product
*/

import UIKit

class RepoTableViewCell: UITableViewCell {
   
    // TO-DO: Connect the future cell components with the outlets
    
    //@IBOutlet weak var titleLabel: UILabel!
    //@IBOutlet weak var descriptionLabel: UILabel!
    //@IBOutlet weak var dateLabel: UILabel!
    //@IBOutlet weak var authorImage: UIImage!
    
    var repoModel: Repo!
    
    func settingCellComponents(repo: Repo) {
        
        // TO-DO: Connect the future cell components with the outlets
        
        //titleLabel.text = repo.name
        //descriptionLabel.text = repo.description
        //authorLabel.text = repo.author
    }
}
