//
//  FileItemState.swift
//  CodeEdit
//
//  Created by Mateusz BÄk on 7/15/22.
//

import Foundation

struct FileItem: Hashable, Identifiable, CustomStringConvertible {
    var id: Self { self }
    var name: String
    var children: [FileItem]? = nil
    var isExpanded: Bool = .random()

    var description: String {
        switch children {
        case nil:
            return "ð \(name)"
        case .some(let children):
            return children.isEmpty ? "ð \(name)" : "ð \(name)"
        }
    }
}
