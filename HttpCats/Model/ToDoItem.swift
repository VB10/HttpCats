//
//  ToDoItem.swift
//  HttpCats
//
//  Created by Veli on 3.07.2020.
//  Copyright © 2020 Veli. All rights reserved.
//

import Foundation


struct ToDoItem: Identifiable {
    var id = UUID()
    var title: String
    var important: Bool

    init(title: String, important: Bool) {
        self.title = title
        self.important = important
    }

}
