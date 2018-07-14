/*
//  IssueTableViewCell.swift
//  GHKanbanViewController
//
//  Created by Ana Rebollo Pin on 14/7/18.
//  Copyright © 2018 Ana Rebollo Pin. All rights reserved.
//
//  This class allows to create a custom cell inside the DoingViewController,
//  BackLogViewController, DoneViewController and NextViewController.
//
//  TO-DO: In this first iteration not all the issues properties will
//  be used. Only the title and description, but in the future the other
//  paramenters will be shown in the final product.
*/

import Foundation

import UIKit

class IssueTableViewCell: UITableViewCell {
    
    // TO-DO: Connect the future cell components with the outlets
    
    //@IBOutlet weak var titleLabel: UILabel!
    //@IBOutlet weak var descriptionLabel: UILabel!
    //@IBOutlet weak var dateLabel: UILabel!
    //@IBOutlet weak var authorImage: UIImage!
    
    var issueModel: Issue!
    
    func settingCellComponents(issue: Issue) {
        
        // TO-DO: Connect the future cell components with the object
        //issue parameters whe the outlets are connected
        
        //titleLabel.text = issue.title
        //authorLabel.text = issue. author
        //descriptionLabel.text = issue.description
    }
}
