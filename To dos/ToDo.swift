//
//  ToDo.swift
//  To dos
//
//  Created by Aisha Ali on 19/08/2023.
//

import Foundation
struct Todo: Identifiable {
    let id = UUID()
    var title : String
    var subtitle = ""
    var isCompleted = false
}
