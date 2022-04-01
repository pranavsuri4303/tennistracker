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


// MARK: Nationalities List

struct Nationalities {
    let list = [
        "",
        "Afghanistan",
        "Albania",
        "Algeria",
        "American Samoa",
        "Andorra",
        "Angola",
        "Anguilla",
        "Antarctica",
        "Antigua and Barbuda",
        "Argentina",
        "Armenia",
        "Aruba",
        "Australia",
        "Austria",
        "Azerbaijan",
        "Bahamas",
        "Bahrain",
        "Bangladesh",
        "Barbados",
        "Belarus",
        "Belgium",
        "Belize",
        "Benin",
        "Bermuda",
        "Bhutan",
        "Bolivia (Plurinational State of)",
        "Bonaire, Sint Eustatius and Saba",
        "Bosnia and Herzegovina",
        "Botswana",
        "Bouvet Island",
        "Brazil",
        "British Indian Ocean Territory",
        "Brunei Darussalam",
        "Bulgaria",
        "Burkina Faso",
        "Burundi",
        "Cabo Verde",
        "Cambodia",
        "Cameroon",
        "Canada",
        "Cayman Islands",
        "Central African Republic",
        "Chad",
        "Chile",
        "China",
        "Christmas Island",
        "Cocos Islands",
        "Colombia",
        "Comoros",
        "The Democratic Republic of Congo",
        "Congo",
        "Cook Islands",
        "Costa Rica",
        "Croatia",
        "Cuba",
        "Curaçao",
        "Cyprus",
        "Czechia",
        "Côte d'Ivoire",
        "Denmark",
        "Djibouti",
        "Dominica",
        "The Dominican Republic",
        "Ecuador",
        "Egypt",
        "El Salvador",
        "Equatorial Guinea",
        "Eritrea",
        "Estonia",
        "Eswatini",
        "Ethiopia",
        "Falkland Islands",
        "Faroe Islands",
        "Fiji",
        "Finland",
        "France",
        "French Guiana",
        "French Polynesia",
        "French Southern Territories",
        "Gabon",
        "Gambia",
        "Georgia",
        "Germany",
        "Ghana",
        "Gibraltar",
        "Greece",
        "Greenland",
        "Grenada",
        "Guadeloupe",
        "Guam",
        "Guatemala",
        "Guernsey",
        "Guinea",
        "Guinea-Bissau",
        "Guyana",
        "Haiti",
        "Heard Island and McDonald Islands",
        "Holy See",
        "Honduras",
        "Hong Kong",
        "Hungary",
        "Iceland",
        "India",
        "Indonesia",
        "Iran",
        "Iraq",
        "Ireland",
        "Isle of Man",
        "Israel",
        "Italy",
        "Jamaica",
        "Japan",
        "Jersey",
        "Jordan",
        "Kazakhstan",
        "Kenya",
        "Kiribati",
        "DPRK",
        "Korea",
        "Kuwait",
        "Kyrgyzstan",
        "Lao People's Democratic Republic",
        "Latvia",
        "Lebanon",
        "Lesotho",
        "Liberia",
        "Libya",
        "Liechtenstein",
        "Lithuania",
        "Luxembourg",
        "Macao",
        "Madagascar",
        "Malawi",
        "Malaysia",
        "Maldives",
        "Mali",
        "Malta",
        "Marshall Islands",
        "Martinique",
        "Mauritania",
        "Mauritius",
        "Mayotte",
        "Mexico",
        "Micronesia",
        "Moldova",
        "Monaco",
        "Mongolia",
        "Montenegro",
        "Montserrat",
        "Morocco",
        "Mozambique",
        "Myanmar",
        "Namibia",
        "Nauru",
        "Nepal",
        "Netherlands",
        "New Caledonia",
        "New Zealand",
        "Nicaragua",
        "Niger (the)",
        "Nigeria",
        "Niue",
        "Norfolk Island",
        "Northern Mariana Islands",
        "Norway",
        "Oman",
        "Pakistan",
        "Palau",
        "Palestine",
        "Panama",
        "Papua New Guinea",
        "Paraguay",
        "Peru",
        "Philippines",
        "Pitcairn",
        "Poland",
        "Portugal",
        "Puerto Rico",
        "Qatar",
        "Republic of North Macedonia",
        "Romania",
        "Russian Federation",
        "Rwanda",
        "Réunion",
        "Saint Barthélemy",
        "Saint Helena, Ascension and Tristan da Cunha",
        "Saint Kitts and Nevis",
        "Saint Lucia",
        "Saint Martin",
        "Saint Pierre and Miquelon",
        "Saint Vincent and the Grenadines",
        "Samoa",
        "San Marino",
        "Sao Tome and Principe",
        "Saudi Arabia",
        "Senegal",
        "Serbia",
        "Seychelles",
        "Sierra Leone",
        "Singapore",
        "Sint Maarten",
        "Slovakia",
        "Slovenia",
        "Solomon Islands",
        "Somalia",
        "South Africa",
        "South Georgia and the South Sandwich Islands",
        "South Sudan",
        "Spain",
        "Sri Lanka",
        "Sudan (the)",
        "Suriname",
        "Svalbard and Jan Mayen",
        "Sweden",
        "Switzerland",
        "Syrian Arab Republic",
        "Taiwan",
        "Tajikistan",
        "Tanzania",
        "Thailand",
        "Timor-Leste",
        "Togo",
        "Tokelau",
        "Tonga",
        "Trinidad and Tobago",
        "Tunisia",
        "Turkey",
        "Turkmenistan",
        "Turks and Caicos Islands",
        "Tuvalu",
        "Uganda",
        "Ukraine",
        "United Arab Emirates",
        "United Kingdom of Great Britain and Northern Ireland",
        "United States Minor Outlying Islands",
        "United States of America",
        "Uruguay",
        "Uzbekistan",
        "Vanuatu",
        "Venezuela (Bolivarian Republic of)",
        "Viet Nam",
        "Virgin Islands (British)",
        "Virgin Islands",
        "Wallis and Futuna",
        "Western Sahara",
        "Yemen",
        "Zambia",
        "Zimbabwe",
        "Åland Islands"
    ]
}
