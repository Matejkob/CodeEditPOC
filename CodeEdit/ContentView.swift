//
//  ContentView.swift
//  CodeEdit
//
//  Created by Mateusz Bąk on 7/14/22.
//

import SwiftUI
import ComposableArchitecture

struct ContentView: View {
    let store: Store<ProjectNavigatorState, ProjectNavigatorAction>

    var body: some View {
        WithViewStore(
            store.scope(
                state: ProjectNavigatorViewState.init,
                action: ProjectNavigatorAction.init
            )
        ) { viewStore in
            Text(viewStore.selectedFileItem?.name ?? "None selected")
        }
    }
}
