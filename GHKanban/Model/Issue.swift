/*
//  Issue.swift
//  GHKanbanViewController
//
//  Created by Ana Rebollo Pin on 13/7/18.
//  Copyright © 2018 Ana Rebollo Pin. All rights reserved.
//
//  This class represents the issues added to the repos.
//
//  TO-DO: In this first iteration not all the Issues properties will
//  be used. Only the title and explanation, but in the future the other
//  paramenters will be shown in the final product
*/

enum IssueStatus: String {
    
    case backlog
    case next
    case doing
    case done
}

class Issue {
    
    var issueNumber: Int!
    var title: String!
    var status: IssueStatus
    var author: String!
    var explanation: String!
    var reponsable: String!
    var numberOfComents: Int!
    var comments: [Comment]
    
    init (title: String, author: String) {
        
        self.issueNumber = 0
        self.title = title
        self.status = IssueStatus.backlog
        self.author = author
        self.explanation = ""
        self.reponsable = ""
        self.numberOfComents = 0
        self.comments = []
    }
}
