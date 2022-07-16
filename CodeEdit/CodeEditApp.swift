//
//  CodeEditApp.swift
//  CodeEdit
//
//  Created by Mateusz Bąk on 7/14/22.
//

import SwiftUI
import ComposableArchitecture

@main
struct CodeEditApp: App {
    let store = Store(
        initialState: ProjectNavigatorState(fileItems: [data, data]),
        reducer: projectNavigatorReducer,
        environment: ProjectNavigatorEnvironment()
    )

    var body: some Scene {
        DocumentGroup(newDocument: CodeEditDocument()) { file in
            NavigationView {
                ProjectNavigatorView(store: store)

                ContentView(store: store)
            }
        }
        Settings {
            Text("Ola")
                .frame(width: 50, height: 50)
        }
    }
}

let data =
  FileItem(name: "users", children:
    [FileItem(name: "user1234", children:
      [FileItem(name: "Photos", children:
        [FileItem(name: "photo001.jpg"),
         FileItem(name: "photo002.jpg")]),
       FileItem(name: "Movies", children:
         [FileItem(name: "movie001.mp4")]),
          FileItem(name: "Documents", children: [])
      ]),
     FileItem(name: "newuser", children:
       [FileItem(name: "Documents", children: [
        FileItem(name: "Doc child")
       ])
       ])
    ])

