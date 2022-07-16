//
//  ProjectNavigatorViewState.swift
//  CodeEdit
//
//  Created by Mateusz Bąk on 7/15/22.
//

import Foundation

struct ProjectNavigatorViewState: Equatable {
    var fileItems = [FileItem]()
    var selectedFileItem: FileItem?

    init(state: ProjectNavigatorState) {
        self.fileItems = state.fileItems
        self.selectedFileItem = state.selectedFileItem
    }
}
