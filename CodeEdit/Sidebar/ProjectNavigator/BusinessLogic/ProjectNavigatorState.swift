//
//  ProjectNavigatorState.swift
//  CodeEdit
//
//  Created by Mateusz Bąk on 7/15/22.
//

import Foundation

struct ProjectNavigatorState: Equatable {
    var fileItems = [FileItem]()
    var selectedFileItem: FileItem.ID?
}
