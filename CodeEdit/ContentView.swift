//
//  ContentView.swift
//  CodeEdit
//
//  Created by Mateusz Bąk on 7/14/22.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: CodeEditDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(CodeEditDocument()))
    }
}
