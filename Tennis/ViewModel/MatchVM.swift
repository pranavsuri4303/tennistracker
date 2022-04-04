//
//  AddMatchViewModel.swift
//  Tennis
//
//  Created by Pranav Suri on 29/1/21.
//

import Firebase
import LocalAuthentication
import SwiftUI

final class MatchVM: ObservableObject {
    // Games
    @Published var server = PlayerType.p1
    @Published var noOfSets = 1
    @Published var deuceType = DeuceType.deuce
    @Published var trackingStyle = TrackingType.basic
    @Published var matchIsOver = false
    @Published var winner = PlayerType.p1
    
    // Serve
    @Published var serve = Serve.firstServe
    @Published var serveIn = false
    
    // For Alerts..
    @Published var alert = false
    @Published var alertMsg = ""
    // Loading Screen...
    @Published var isLoading = false
    // Stats
    @Published var P1 = Player()
    @Published var P2 = Player()
    
    
    func getFriends() {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        print("Fetching Friends")
    }
    
    func pointWon(by: PlayerType, deuce: DeuceType, servingPlayer: PlayerType) {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        switch deuce {
        case .noDeuce:
            if by == .p1 {
                P1.pts += 1
                P1.totalPtsWon += 1
                checkIfGameIsOver(p1: P1.pts, p2: P2.pts, deuce: deuce, servingPlayer: servingPlayer)
            } else if by == .p2 {
                P2.pts += 1
                P2.totalPtsWon += 1
                checkIfGameIsOver(p1: P1.pts, p2: P2.pts, deuce: deuce, servingPlayer: servingPlayer)
            }
        case .deuce:
            if by == .p1 {
                if P2.pts == 4, P1.pts == 3 {
                    P2.pts -= 1
                    P1.totalPtsWon += 1
                    print("\(P1.pts) - \(P2.pts)")
                    checkIfGameIsOver(p1: P1.pts, p2: P2.pts, deuce: deuce, servingPlayer: servingPlayer)
                    
                } else {
                    P1.pts += 1
                    P1.totalPtsWon += 1
                    print("\(P1.pts) - \(P2.pts)")
                    checkIfGameIsOver(p1: P1.pts, p2: P2.pts, deuce: deuce, servingPlayer: servingPlayer)
                }
            } else if by == .p2 {
                if P1.pts == 4, P2.pts == 3 {
                    P1.pts -= 1
                    P2.totalPtsWon += 1
                    
                    print("\(P1.pts) - \(P2.pts)")
                    checkIfGameIsOver(p1: P1.pts, p2: P2.pts, deuce: deuce, servingPlayer: servingPlayer)
                    
                } else {
                    P2.pts += 1
                    P2.totalPtsWon += 1
                    
                    print("\(P1.pts) - \(P2.pts)")
                    checkIfGameIsOver(p1: P1.pts, p2: P2.pts, deuce: deuce, servingPlayer: servingPlayer)
                }
            }
        case .oneDeuce:
            if by == .p1 {
                P1.pts += 1
                P1.totalPtsWon += 1
                checkIfGameIsOver(p1: P1.pts, p2: P2.pts, deuce: deuce, servingPlayer: servingPlayer)
            } else if by == .p2 {
                P2.pts += 1
                P2.totalPtsWon += 1
                checkIfGameIsOver(p1: P1.pts, p2: P2.pts, deuce: deuce, servingPlayer: servingPlayer)
            }
        }
    }
    
    func resetPts() {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        P1.pts = 0
        P2.pts = 0
    }

    func resetGames() {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        P1.games = 0
        P2.games = 0
    }

    func changeServer(oldServer: PlayerType) {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        if oldServer == .p1 {
            server = .p2
        } else if oldServer == .p2 {
            server = .p1
        }
    }

    func gameWon(by: PlayerType, servingPlayer: PlayerType) {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        print(by)
        if by == .p1 {
            P1.games += 1
            changeServer(oldServer: servingPlayer)
            resetPts()
            checkIfMatchIsOver(p1: P1.games, p2: P2.games)
        } else if by == .p2 {
            P2.games += 1
            changeServer(oldServer: servingPlayer)
            resetPts()
            checkIfMatchIsOver(p1: P1.games, p2: P2.games)
        }
    }
    
    func checkIfGameIsOver(p1: Int, p2: Int, deuce: DeuceType, servingPlayer: PlayerType) {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        switch deuce {
        case .noDeuce:
            print(p1, p2)
            if P1.pts == 4 || P2.pts == 4 {
                if P1.pts > P2.pts {
                    gameWon(by: .p1, servingPlayer: servingPlayer)
                } else if P2.pts > P1.pts {
                    gameWon(by: .p2, servingPlayer: servingPlayer)
                }
            }
        case .deuce:
            print(p1, p2)
            if P1.pts > P2.pts {
                if P1.pts == 4 || P1.pts == 5, (P1.pts - P2.pts) >= 2 {
                    gameWon(by: .p1, servingPlayer: servingPlayer)
                }
            } else if P2.pts > P1.pts {
                if P2.pts == 4 || P2.pts == 5, (P2.pts - P1.pts) >= 2 {
                    gameWon(by: .p2, servingPlayer: servingPlayer)
                }
            }
        case .oneDeuce:
            print(p1, p2)
            if P1.pts == 5 || P2.pts == 5 {
                if P1.pts > P2.pts {
                    gameWon(by: .p1, servingPlayer: servingPlayer)
                } else if P2.pts > P1.pts {
                    gameWon(by: .p2, servingPlayer: servingPlayer)
                }
            } else if P1.pts > P2.pts {
                if P1.pts == 4, (P1.pts - P2.pts) >= 2 {
                    gameWon(by: .p1, servingPlayer: servingPlayer)
                }
            } else if P2.pts > P1.pts {
                if P2.pts == 4, (P2.pts - P1.pts) >= 2 {
                    gameWon(by: .p1, servingPlayer: servingPlayer)
                }
            }
        }
    }
    
    func checkIfMatchIsOver(p1: Int, p2: Int) {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        if p1 == 6 || p2 == 6 {
            if p1 > p2 {
                //                resetPts()
                //                resetGames()
                winner = .p1
                matchIsOver.toggle()
                print("Player 1 wins")
            } else if p1 < p2 {
                //                resetPts()
                //                resetGames()
                winner = .p2
                matchIsOver.toggle()
            }
        }
    }
    
    func aceCounter(server: PlayerType) {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        switch server {
        case .p1:
            P1.aces += 1
            print("Player 1 aces : \(P1.aces)")
        case .p2:
            P2.aces += 1
            print("Player 2 aces : \(P2.aces)")
        }
    }
    
    func firstServe() {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
    }

    func secondServe() {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
    }

    func doubleFault() {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
    }
    
    func ptsToScore(pts: Int) -> String {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        switch pts {
        case 0:
            return "0"
        case 1:
            return "15"
        case 2:
            return "30"
        case 3:
            return "40"
        case 4:
            if deuceType == .deuce {
                return "AD"
            } else if deuceType == .oneDeuce {
                if P1.pts == 4, P2.pts == 4 {
                    return "40"
                } else {
                    return "AD"
                }
            } else {
                return "0"
            }
        case 5:
            return "0"

        default:
            print("Going to Default!! Erroor")
            return"0"
        }
    }
}

enum PlayerType {
    case p1
    case p2
}

enum DeuceType {
    case deuce
    case noDeuce
    case oneDeuce
}

enum TrackingType {
    case basic
    case advanced
    case expert
}

enum Serve {
    case firstServe
    case secondServe
}

struct Player {
    var name = ""
    // Game Scoring
    var pts = 0
    var games = 0
    // Service Ststs
    var aces = 0
    var totalPtsWon = 0
    var totalGamesWon = 0
    var doubleFaults = 0
    var totalServes = 0
    var totalFirstServes = 0
    var firstServesIn = 0
    var totalSecondServes = 0
    var secondServesIn = 0
}
