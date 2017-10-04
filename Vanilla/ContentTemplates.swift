//
//  ContentTemplates.swift
//  Vanilla
//
//  Created by Marc Santos on 2017-09-28.
//  Copyright © Flybits Inc. All rights reserved.
//

import Foundation

enum Template: String {
    case contact
    case menuItem
    case restaurant

    init?(fromId: String) {
        if let matchingTemplate = Template.all.filter({$0.templateId == fromId}).first {
            self = matchingTemplate
        } else {
            return nil
        }
    }

    var templateId: String {
        switch self {
        case .contact:
            return "E2306E5F-CED3-4927-8A64-58CD0E7E212E"
        case .menuItem:
            return "C97B0E8A-AFD5-424C-B69E-F646EA125229"
        case .restaurant:
            return "37968887-EF03-456C-9EF6-33C7F18B1FEC"
        }
    }

    var title: String {
        switch self {
        case .contact:
            return "Contact"
        case .menuItem:
            return "Menu Item"
        case .restaurant:
            return "Restaurant"
        }
    }

    var numberOfProperties: Int {
        switch self {
        case .contact:
            return 7
        case .menuItem:
            return 5
        case .restaurant:
            return 8
        }
    }

    static let all: [Template] = [.contact, .menuItem, .restaurant]
}
