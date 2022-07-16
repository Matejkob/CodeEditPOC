//
//  ProjectNavigatorViewAction.swift
//  CodeEdit
//
//  Created by Mateusz Bąk on 7/15/22.
//

import Foundation

enum ProjectNavigatorViewAction: Equatable {
    case select(FileItem?)
    case toggleExpandention(FileItem, Bool)
}
