//
//  StandardCodes.swift
//  Tennis
//
//  Created by Pranav Suri on 30/11/22.
//

import Foundation


// MARK: ParticipantRole

enum ParticipantRole {
    case competitor
    case official
    case captain
    case coach

    var code: String {
        switch self {
        case .competitor: return "COMP"
        case .official: return "OFF"
        case .captain: return "CAP"
        case .coach: return "CCH"
        }
    }

    var extendedCode: String {
        switch self {
        case .competitor: return "COMPETITOR"
        case .official: return "OFFICIAL"
        case .captain: return "CAPTAIN"
        case .coach: return "COACH"
        }
    }

    var description: String {
        switch self {
        case .competitor: return "Competitor"
        case .official: return "Official"
        case .captain: return "Captain"
        case .coach: return "Coach"
        }
    }
}

// MARK: ParticipantStatus

enum ParticipantStatus {
    case active
    case withdrawn

    var code: String {
        switch self {
        case .active: return "AC"
        case .withdrawn: return "WD"
        }
    }

    var extendedCode: String {
        switch self {
        case .active: return "ACTIVE"
        case .withdrawn: return "WITHDRAWN"
        }
    }

    var description: String {
        switch self {
        case .active: return "Active"
        case .withdrawn: return "Withdrawn"
        }
    }
}

// MARK: ParticipantType

enum ParticipantType {
    case individual
    case pair
    case team
    case squad

    var code: String {
        switch self {
        case .individual: return "I"
        case .pair: return "P"
        case .team: return "T"
        case .squad: return "S"
        }
    }

    var extendedCode: String {
        switch self {
        case .individual: return "INDIVIDUAL"
        case .pair: return "PAIR"
        case .team: return "TEAM"
        case .squad: return "SQUAD"
        }
    }

    var description: String {
        switch self {
        case .individual: return "Individual"
        case .pair: return "Pair"
        case .team: return "Team"
        case .squad: return "Squad"
        }
    }
}

// MARK: RankingType

enum RankingType {
    case individual
    case pair
    case team
    case squad

    var code: String {
        switch self {
        case .individual: return "I"
        case .pair: return "P"
        case .team: return "T"
        case .squad: return "S"
        }
    }

    var extendedCode: String {
        switch self {
        case .individual: return "INDIVIDUAL"
        case .pair: return "PAIR"
        case .team: return "TEAM"
        case .squad: return "SQUAD"
        }
    }

    var description: String {
        switch self {
        case .individual: return "Individual"
        case .pair: return "Pair"
        case .team: return "Team"
        case .squad: return "Squad"
        }
    }
}

// MARK: RoundCode

enum RoundCode {
    case final
    case playoff
    case semifinal
    case quarterfinal
    case round16
    case round32
    case round64
    case round128
    case round256
    case roundRobin
    case quarterfinalQualifier
    case round5
    case round5Qualifier
    case round4
    case round4Qualifier
    case round3
    case round3Qualifier
    case round2
    case round1

    var code: String {
        switch self {
        case .final: return "FR"
        case .playoff: return "PO"
        case .semifinal: return "SF"
        case .quarterfinal: return "QF"
        case .round16: return "16"
        case .round32: return "32"
        case .round64: return "64"
        case .round128: return "128"
        case .round256: return "256"
        case .roundRobin: return "RR"
        case .quarterfinalQualifier: return "QQ"
        case .round5: return "R5"
        case .round5Qualifier: return "5Q"
        case .round4: return "R4"
        case .round4Qualifier: return "4Q"
        case .round3: return "R3"
        case .round3Qualifier: return "3Q"
        case .round2: return "R2"
        case .round1: return "R1"
        }
    }

    var extendedCode: String {
        switch self {
        case .final: return "FINAL"
        case .playoff: return "PLAYOFF"
        case .semifinal: return "SEMIFINAL"
        case .quarterfinal: return "QUARTERFINAL"
        case .round16: return "ROUND16"
        case .round32: return "ROUND32"
        case .round64: return "ROUND64"
        case .round128: return "ROUND128"
        case .round256: return "ROUND256"
        case .roundRobin: return "ROUNDROBIN"
        case .quarterfinalQualifier: return "QUARTERFINALQUALIFIER"
        case .round5: return "ROUND5"
        case .round5Qualifier: return "ROUND5QUALIFIER"
        case .round4: return "ROUND4"
        case .round4Qualifier: return "ROUND4QUALIFIER"
        case .round3: return "ROUND3"
        case .round3Qualifier: return "ROUND3QUALIFIER"
        case .round2: return "ROUND2"
        case .round1: return "ROUND1"
        }
    }

    var description: String {
        switch self {
        case .final: return "Finals"
        case .playoff: return "Playoff"
        case .semifinal: return "Semifinals"
        case .quarterfinal: return "Quarterfinals"
        case .round16: return "Round of 16"
        case .round32: return "Round of 32"
        case .round64: return "Round of 64"
        case .round128: return "Round of 128"
        case .round256: return "Round of 256"
        case .roundRobin: return "Round Robin"
        case .quarterfinalQualifier: return "Quarterfinal Qualifier"
        case .round5: return "Round 5"
        case .round5Qualifier: return "Round 5 Qualifier"
        case .round4: return "Round 4"
        case .round4Qualifier: return "Round 4 Qualifier"
        case .round3: return "Round 3"
        case .round3Qualifier: return "Round 3 Qualifier"
        case .round2: return "Round 2"
        case .round1: return "Round 1"
        }
    }
}

// MARK: Sex


// MARK: ShotDetail

enum ShotDetail {
    case dropShot
    case flat
    case groundStroke
    case volley
    case halfVolley
    case lob
    case passingShot
    case smash

    var code: String {
        switch self {
        case .dropShot: return "DS"
        case .flat: return "FS"
        case .groundStroke: return "GS"
        case .volley: return "VO"
        case .halfVolley: return "HV"
        case .lob: return "LO"
        case .passingShot: return "PS"
        case .smash: return "SM"
        }
    }

    var extendedCode: String {
        switch self {
        case .dropShot: return "DROP_SHOT"
        case .flat: return "FLAT"
        case .groundStroke: return "GROUND_STROKE"
        case .volley: return "VOLLEY"
        case .halfVolley: return "HALF_VOLLEY"
        case .lob: return "LOB"
        case .passingShot: return "PASSING_SHOT"
        case .smash: return "SMASH"
        }
    }

    var description: String {
        switch self {
        case .dropShot: return "Drop shot"
        case .flat: return "Flat"
        case .groundStroke: return "Ground stroke"
        case .volley: return "Volley"
        case .halfVolley: return "Half volley"
        case .lob: return "Lob"
        case .passingShot: return "Passing shot"
        case .smash: return "Smash"
        }
    }
}

// MARK: ShotType

enum ShotType {
    case forehand
    case backhand
    case serve

    var code: String {
        switch self {
        case .forehand: return "FH"
        case .backhand: return "BH"
        case .serve: return "SE"
        }
    }

    var extendedCode: String {
        switch self {
        case .forehand: return "FOREHAND"
        case .backhand: return "BACKHAND"
        case .serve: return "SERVE"
        }
    }

    var description: String {
        switch self {
        case .forehand: return "Forehand"
        case .backhand: return "Backhand"
        case .serve: return "Serve"
        }
    }
}

// MARK: ShotOutcome

enum ShotOutcome {
    case shotIn
    case shotOut
    case shotLet

    var code: String {
        switch self {
        case .shotIn: return "I"
        case .shotOut: return "O"
        case .shotLet: return "L"
        }
    }

    var extendedCode: String {
        switch self {
        case .shotIn: return "IN"
        case .shotOut: return "OUT"
        case .shotLet: return "LET"
        }
    }

    var description: String {
        switch self {
        case .shotIn: return "In"
        case .shotOut: return "Out"
        case .shotLet: return "Let "
        }
    }
}

// MARK: ShotMadeFrom

enum ShotMadeFrom {
    case baseline
    case serviceLine
    case net

    var code: String {
        switch self {
        case .baseline: return "BL"
        case .serviceLine: return "SL"
        case .net: return "N"
        }
    }

    var extendedCode: String {
        switch self {
        case .baseline: return "BASELINE"
        case .serviceLine: return "SERVICELINE"
        case .net: return "NET"
        }
    }

    var description: String {
        switch self {
        case .baseline: return "Baseline"
        case .serviceLine: return "Service line"
        case .net: return "Net "
        }
    }
}

// MARK: StartType
// MARK: StageType

enum StageType {
    case main
    case qualifying
    case playOff
    case consolation

    var code: String {
        switch self {
        case .main: return "M"
        case .qualifying: return "QD"
        case .playOff: return "PO"
        case .consolation: return "CD"
        }
    }

    var extendedCode: String {
        switch self {
        case .main: return "MAIN"
        case .qualifying: return "QUALIFYING"
        case .playOff: return "PLAY_OFF"
        case .consolation: return "CONSOLATION"
        }
    }

    var description: String {
        switch self {
        case .main: return "Main Stage"
        case .qualifying: return "Qualifying Stage"
        case .playOff: return "Play-off"
        case .consolation: return "Consolation Stage"
        }
    }
}

// MARK: DrawStatus


// MARK: TieStatus

enum TieStatus {
    case toBePlayed
    case inProgress
    case complete

    var code: String {
        switch self {
        case .toBePlayed: return "TP"
        case .inProgress: return "IP"
        case .complete: return "CO"
        }
    }

    var extendedCode: String {
        switch self {
        case .toBePlayed: return "TO_BE_PLAYED"
        case .inProgress: return "IN_PROGRESS"
        case .complete: return "COMPLETE"
        }
    }

    var description: String {
        switch self {
        case .toBePlayed: return "To be played"
        case .inProgress: return "In progress"
        case .complete: return "Complete"
        }
    }
}

// MARK: TournamentLevel

enum TournamentLevel {
    case international
    case national
    case regional
    case district
    case local
    case club
    case recreational

    var code: String {
        switch self {
        case .international: return "INT"
        case .national: return "NAT"
        case .regional: return "REG"
        case .district: return "DIS"
        case .local: return "LOC"
        case .club: return "CLB"
        case .recreational: return "REC"
        }
    }

    var extendedCode: String {
        switch self {
        case .international: return "INTERNATIONAL"
        case .national: return "NATIONAL"
        case .regional: return "REGIONAL"
        case .district: return "DISTRICT"
        case .local: return "LOCAL"
        case .club: return "CLUB"
        case .recreational: return "RECREATIONAL"
        }
    }

    var description: String {
        switch self {
        case .international: return "International"
        case .national: return "National"
        case .regional: return "Regional"
        case .district: return "District"
        case .local: return "Local"
        case .club: return "Club"
        case .recreational: return "Recreational"
        }
    }
}
