//
//  Constants.swift
//  Tennis
//
//  Created by Pranav Suri on 21/1/21.
//

import FirebaseAuth
import Firebase
import Foundation
enum AuthState: String {
    case success = "Success"
    case error = "Error"
    case authenticating = "Authenticating"
    case initial = "Initial"
}

enum ViewState: String {
    case loading = "Loading"
    case success = "Success"
    case initial = "Initial"
    case error = "Error"
}

enum CurrentTab: String, Equatable, CaseIterable {
    case profile = "Profile"
    case dashboard = "Dashboard"
    case string = "String"
    case players = "Players"
    case matches = "Matches"
    case friends = "Friends"
    case clubs = "Clubs"
}

// MARK: Sorting Key Enums and Structs

enum Sort: CaseIterable {
    case alphabeticalAsc
    case alphabeticalDesc
    case dateNewToOld
    case dateOldToNew
    case mainsDsc
    case mainsAsc
    case crossDsc
    case crossAsc

    func title() -> String {
        switch self {
        case .alphabeticalAsc:
            return "A → Z"
        case .alphabeticalDesc:
            return "Z → A"
        case .dateNewToOld:
            return "Date: Newest → Oldest"
        case .dateOldToNew:
            return "Date: Oldest → Newest"
        case .mainsDsc:
            return "Mains: High → Low"
        case .mainsAsc:
            return "Mains: Low → High"
        case .crossDsc:
            return "Cross: High → Low"
        case .crossAsc:
            return "Cross: Low → High"
        }
    }

    func key() -> String {
        switch self {
        case .alphabeticalAsc, .alphabeticalDesc:
            return "name"
        case .dateNewToOld, .dateOldToNew:
            return "date"
        case .mainsDsc, .mainsAsc:
            return "mains"
        case .crossDsc, .crossAsc:
            return "cross"
        }
    }

    func order() -> Bool {
        switch self {
        case .alphabeticalAsc, .dateOldToNew, .mainsAsc, .crossAsc:
            return false
        case .alphabeticalDesc, .dateNewToOld, .mainsDsc, .crossDsc:
            return true
        }
    }
}

// MARK: Firestore Paths
struct FSPath {
    static let users = Firestore.firestore().collection("users")
}
