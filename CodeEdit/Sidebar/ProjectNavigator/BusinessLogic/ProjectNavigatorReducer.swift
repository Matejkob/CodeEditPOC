//
//  ProjectNavigatorReducer.swift
//  CodeEdit
//
//  Created by Mateusz Bąk on 7/15/22.
//

import Foundation
import ComposableArchitecture

let projectNavigatorReducer = Reducer<
    ProjectNavigatorState,
    ProjectNavigatorAction,
    ProjectNavigatorEnvironment
> { state, action, environment in
    switch action {
    case let .select(selectedFileItem):
        state.selectedFileItem = selectedFileItem
        return .none

    case let .toggleExpandention(fileItem, isExpanded):

        return .none
    }
}
.debug()
