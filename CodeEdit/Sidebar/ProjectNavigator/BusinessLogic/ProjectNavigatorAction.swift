//
//  ProjectNavigatorAction.swift
//  CodeEdit
//
//  Created by Mateusz Bąk on 7/15/22.
//

import Foundation

enum ProjectNavigatorAction: Equatable {
    case select(FileItem?)
    case toggleExpandention(FileItem, Bool)
}

extension ProjectNavigatorAction {
    init(viewAction: ProjectNavigatorViewAction) {
        switch viewAction {
        case let .select(fileItem):
            self = .select(fileItem)
        case let .toggleExpandention(fileItem, isExpanded):
            self = .toggleExpandention(fileItem, isExpanded)
        }
    }
}
