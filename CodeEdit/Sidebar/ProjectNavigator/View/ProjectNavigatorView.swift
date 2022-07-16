//
//  ProjectNavigatorView.swift
//  CodeEdit
//
//  Created by Mateusz Bąk on 7/15/22.
//

import SwiftUI
import ComposableArchitecture

struct ProjectNavigatorView: View {
    typealias LocalViewStore = ViewStore<
        ProjectNavigatorViewState,
            ProjectNavigatorViewAction
    >

    let store: Store<ProjectNavigatorState, ProjectNavigatorAction>

    var body: some View {
        WithViewStore(
            store.scope(
                state: ProjectNavigatorViewState.init,
                action: ProjectNavigatorAction.init
            )
        ) { viewStore in
            List(
                selection: Binding<FileItem?>(get: {
                    viewStore.selectedFileItem
                }, set: { selectedItem, _ in
                    viewStore.send(.select(selectedItem))
                })) {
                    ForEach(viewStore.fileItems) { fileItem in
                        disclosureGroup(fileItem, viewStore: viewStore)
                    }
                }
        }
    }

    func disclosureGroup(_ data: FileItem, viewStore: LocalViewStore) -> some View {
        DisclosureGroup(
            isExpanded: Binding(get: {
                data.isExpanded
            }, set: { _, _ in

            })) {
                if let children = data.children {
                    ForEach(children) { fileItem in
                        if fileItem.children == nil {
                            Text(fileItem.description)
                        } else {
                            AnyView(disclosureGroup(fileItem, viewStore: viewStore))
                        }
                    }
                }
            } label: {
                Text(data.description)
            }
    }
}
