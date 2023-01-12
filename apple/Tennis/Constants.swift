//
//  Constants.swift
//  Tennis
//
//  Created by Pranav Suri on 21/1/21.
//

import Firebase
import FirebaseAuth
import Foundation
import SwiftUI
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

enum CurrentMenuTab: String, Equatable, CaseIterable {
    case profile = "Profile"
    case dashboard = "Dashboard"
    case string = "String"
    case players = "Players"
    case matches = "Matches"
    case friends = "Friends"
    case clubs = "Clubs"
}

enum Tabs: String, Equatable, CaseIterable {
    case home = "Home"
    case search = "Search"
    case dashboard = "Dashboard"
    case tennis = "Tennis"
    case profile = "Profile"

    func title() -> String {
        switch self {
        case .home: return "Home"
        case .search: return "Search"
        case .dashboard: return "Dashboard"
        case .tennis: return "Tennis"
        case .profile: return "Profile"
        }
    }

    func imageName() -> String {
        switch self {
        case .home: return "house"
        case .search: return "magnifyingglass"
        case .dashboard: return "chart.bar"
        case .tennis: return "number"
        case .profile: return "person"
        }
    }

    func view() -> any View {
        switch self {
        case .home: return Text("Home")
        case .search: return SearchView()
        case .dashboard: return DashboardView()
        case .tennis: return Text("Tennis")
        case .profile: return NewProfileView()
        }
    }
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

enum FSPath {
    static let users = Firestore.firestore().collection("users")
}
