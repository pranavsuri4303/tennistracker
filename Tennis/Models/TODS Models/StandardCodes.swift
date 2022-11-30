//
//  StandardCodes.swift
//  Tennis
//
//  Created by Pranav Suri on 30/11/22.
//

import Foundation

enum AddressType {
    case home
    case work
    case mail
    case residential
    case venue

    var code: String {
        switch self {
        case .home: return "H"
        case .work: return "W"
        case .mail: return "M"
        case .residential: return "R"
        case .venue: return "V"
        }
    }

    var extendedCode: String {
        switch self {
        case .home: return "HOME"
        case .work: return "WORK"
        case .mail: return "MAIL"
        case .residential: return "RESIDENTIAL"
        case .venue: return "VENUE"
        }
    }

    var description: String {
        switch self {
        case .home: return "Home Address"
        case .work: return "Work Address"
        case .mail: return "Mail Address"
        case .residential: return "Residential Address"
        case .venue: return "Venue Location"
        }
    }
}

enum AgeCategory {
    case under
    case over
    case between
    case combined

    var code: String {
        switch self {
        case .under: return "U"
        case .over: return "O"
        case .between: return "-"
        case .combined: return "C"
        }
    }

    var extendedCode: String {
        switch self {
        case .under: return "UNDER"
        case .over: return "OVER"
        case .between: return "BETWEEN"
        case .combined: return "COMBINED"
        }
    }

    var description: String {
        switch self {
        case .under: return "under the age. Excluding age as a prefix, Including age as a suffix"
        case .over: return "over the age. Excluding age as a prefix, Including age as a suffix"
        case .between: return "over age up to age. Excluding age as a prefix, Including age as a suffix."
        case .combined: return "The combined ages of all players on a single side (usually a PAIR)"
        }
    }
}

// MARK: BallType

enum BallType {
    case type1Fast
    case t2StandardPressureless
    case t2StandardPressurised
    case type3Slow
    case stage1Green
    case stage2Orange
    case stage3Red
    case highAltitude

    var code: String {
        switch self {
        case .type1Fast: return "T1"
        case .t2StandardPressureless: return "T2P"
        case .t2StandardPressurised: return "T2L"
        case .type3Slow: return "T3"
        case .stage1Green: return "S1"
        case .stage2Orange: return "S2"
        case .stage3Red: return "S3"
        case .highAltitude: return "HA"
        }
    }

    var extendedCode: String {
        switch self {
        case .type1Fast: return "TYPE1FAST"
        case .t2StandardPressureless: return "T2STANDARD_PRESSURELESS"
        case .t2StandardPressurised: return "T2STANDARD_PRESSURISED"
        case .type3Slow: return "TYPE3SLOW"
        case .stage1Green: return "STAGE1GREEN"
        case .stage2Orange: return "STAGE2ORANGE"
        case .stage3Red: return "STAGE3RED"
        case .highAltitude: return "HIGH_ALTITUDE"
        }
    }

    var description: String {
        switch self {
        case .type1Fast: return "Type 1 - Fast"
        case .t2StandardPressureless: return "Type 2 - Standard (Pressureless)"
        case .t2StandardPressurised: return "Type 2 - Standard (Pressurised)"
        case .type3Slow: return "Type 3 - Slow"
        case .stage1Green: return "Stage 1 - Green"
        case .stage2Orange: return "Stage 2 - Orange"
        case .stage3Red: return "Stage 3 - Red"
        case .highAltitude: return "High Altitude"
        }
    }
}

// MARK: ContactType

enum ContactType {
    case director
    case official
    case referee
    case media
    case press

    var code: String {
        switch self {
        case .director: return "D"
        case .official: return "O"
        case .referee: return "R"
        case .media: return "M"
        case .press: return "P"
        }
    }

    var extendedCode: String {
        switch self {
        case .director: return "DIRECTOR"
        case .official: return "OFFICIAL"
        case .referee: return "REFEREE"
        case .media: return "MEDIA"
        case .press: return "PRESS"
        }
    }

    var description: String {
        switch self {
        case .director: return "Director"
        case .official: return "Official"
        case .referee: return "Referee"
        case .media: return "Media"
        case .press: return "Press"
        }
    }
}

// MARK: DrawStructure

enum DrawStructure {
    case knockOut
    case roundRobin
    case feedIn
    case other

    var code: String {
        switch self {
        case .knockOut: return "KO"
        case .roundRobin: return "RR"
        case .feedIn: return "FI"
        case .other: return "OT"
        }
    }

    var extendedCode: String {
        switch self {
        case .knockOut: return "KNOCK_OUT"
        case .roundRobin: return "ROUND_ROBIN"
        case .feedIn: return "FEED_IN"
        case .other: return "OTHER"
        }
    }

    var description: String {
        switch self {
        case .knockOut: return "Knock-out structure"
        case .roundRobin: return "Round Robin structure"
        case .feedIn: return "Feed-in structure"
        case .other: return "Other structure"
        }
    }
}

// MARK: Discipline

enum Discipline {
    case tennis
    case beach_tennis
    case wheelchair_tennis

    var code: String {
        switch self {
        case .tennis: return "TE"
        case .beach_tennis: return "BT"
        case .wheelchair_tennis: return "WT"
        }
    }

    var extendedCode: String {
        switch self {
        case .tennis: return "TENNIS"
        case .beach_tennis: return "BEACH_TENNIS"
        case .wheelchair_tennis: return "WHEELCHAIR_TENNIS"
        }
    }

    var description: String {
        switch self {
        case .tennis: return "Tennis"
        case .beach_tennis: return "Beach tennis"
        case .wheelchair_tennis: return "Wheelchair tennis"
        }
    }
}

// MARK: EndType

enum EndType {
    case fixed
    case actual

    var code: String {
        switch self {
        case .fixed: return "FX"
        case .actual: return "AC"
        }
    }

    var extendedCode: String {
        switch self {
        case .fixed: return "FIXED"
        case .actual: return "ACTUAL"
        }
    }

    var description: String {
        switch self {
        case .fixed: return "Fixed"
        case .actual: return "Actual"
        }
    }
}

// MARK: EntryStatus

enum EntryStatus {
    case direct_acceptance
    case qualifier
    case lucky_loser
    case wildcard
    case alternate
    case confirmed
    case withdrawn

    var code: String {
        switch self {
        case .direct_acceptance: return "DA"
        case .qualifier: return "QU"
        case .lucky_loser: return "LL"
        case .wildcard: return "WC"
        case .alternate: return "AL"
        case .confirmed: return "CO"
        case .withdrawn: return "WD"
        }
    }

    var extendedCode: String {
        switch self {
        case .direct_acceptance: return "DIRECT_ACCEPTANCE"
        case .qualifier: return "QUALIFIER"
        case .lucky_loser: return "LUCKY_LOSER"
        case .wildcard: return "WILDCARD"
        case .alternate: return "ALTERNATE"
        case .confirmed: return "CONFIRMED"
        case .withdrawn: return "WITHDRAWN"
        }
    }

    var description: String {
        switch self {
        case .direct_acceptance: return "Direct acceptance"
        case .qualifier: return "Qualifier"
        case .lucky_loser: return "Lucky loser"
        case .wildcard: return "Wildcard"
        case .alternate: return "Alternate"
        case .confirmed: return "Confirmed"
        case .withdrawn: return "Withdrawn"
        }
    }
}

// MARK: EventType

enum EventType {
    case singles
    case doubles
    case team

    var code: String {
        switch self {
        case .singles: return "S"
        case .doubles: return "D"
        case .team: return "T"
        }
    }

    var extendedCode: String {
        switch self {
        case .singles: return "SINGLES"
        case .doubles: return "DOUBLES"
        case .team: return "TEAM"
        }
    }

    var description: String {
        switch self {
        case .singles: return "Singles"
        case .doubles: return "Doubles"
        case .team: return "Team"
        }
    }
}

// MARK: Gender

enum Gender {
    case male
    case female
    case mixed
    case any

    var code: String {
        switch self {
        case .male: return "M"
        case .female: return "F"
        case .mixed: return "X"
        case .any: return "A"
        }
    }

    var extendedCode: String {
        switch self {
        case .male: return "MALE"
        case .female: return "FEMALE"
        case .mixed: return "MIXED"
        case .any: return "ANY"
        }
    }

    var description: String {
        switch self {
        case .male: return "Male"
        case .female: return "Female"
        case .mixed: return "Mixed"
        case .any: return "Any Gender"
        }
    }
}

// MARK: IndoorOutdoor

enum IndoorOutdoor {
    case indoor
    case outdoor

    var code: String {
        switch self {
        case .indoor: return "I"
        case .outdoor: return "O"
        }
    }

    var extendedCode: String {
        switch self {
        case .indoor: return "INDOOR"
        case .outdoor: return "OUTDOOR"
        }
    }

    var description: String {
        switch self {
        case .indoor: return "Indoor"
        case .outdoor: return "Outdoor"
        }
    }
}

// MARK: MatchUpStatus

enum MatchUpStatus {
    case abandoned
    case bye
    case defaulted
    case retired
    case walkover
    case completed
    case inProgress
    case notPlayed
    case suspended
    case toBePlayed
    case deadRubber

    var code: String {
        switch self {
        case .abandoned: return "ABN"
        case .bye: return "BYE"
        case .defaulted: return "DEF"
        case .retired: return "RET"
        case .walkover: return "WO"
        case .completed: return "CO"
        case .inProgress: return "IP"
        case .notPlayed: return "NP"
        case .suspended: return "SUS"
        case .toBePlayed: return "TBP"
        case .deadRubber: return "DR"
        }
    }

    var extendedCode: String {
        switch self {
        case .abandoned: return "ABANDONED"
        case .bye: return "BYE"
        case .defaulted: return "DEFAULTED"
        case .retired: return "RETIRED"
        case .walkover: return "WALKOVER"
        case .completed: return "COMPLETED"
        case .inProgress: return "IN_PROGRESS"
        case .notPlayed: return "NOT_PLAYED"
        case .suspended: return "SUSPENDED"
        case .toBePlayed: return "TO_BE_PLAYED"
        case .deadRubber: return "DEAD_RUBBER"
        }
    }

    var description: String {
        switch self {
        case .abandoned: return "Abandoned"
        case .bye: return "Bye"
        case .defaulted: return "Defaulted"
        case .retired: return "Retired"
        case .walkover: return "Walkover"
        case .completed: return "Completed"
        case .inProgress: return "In progress"
        case .notPlayed: return "Not played"
        case .suspended: return "Suspended"
        case .toBePlayed: return "To be played"
        case .deadRubber: return "Dead rubber"
        }
    }
}

// MARK: MatchUpType

enum MatchUpType {
    case singles
    case doubles

    var code: String {
        switch self {
        case .singles: return "S"
        case .doubles: return "D"
        }
    }

    var extendedCode: String {
        switch self {
        case .singles: return "SINGLES"
        case .doubles: return "DOUBLES"
        }
    }

    var description: String {
        switch self {
        case .singles: return "Singles"
        case .doubles: return "Doubles"
        }
    }
}

// MARK: OrganisationType

enum OrganisationType {
    case club
    case national_association
    case school

    var code: String {
        switch self {
        case .club: return "CL"
        case .national_association: return "NA"
        case .school: return "SC"
        }
    }

    var extendedCode: String {
        switch self {
        case .club: return "CLUB"
        case .national_association: return "NATIONAL_ASSOCIATION"
        case .school: return "SCHOOL"
        }
    }

    var description: String {
        switch self {
        case .club: return "Club"
        case .national_association: return "National association"
        case .school: return "School"
        }
    }
}

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

// MARK: PlayingDoubleHandCode

enum PlayingDoubleHandCode {
    case forehand
    case backhand
    case both
    case none

    var code: String {
        switch self {
        case .forehand: return "FH"
        case .backhand: return "BH"
        case .both: return "FB"
        case .none: return "NO"
        }
    }

    var extendedCode: String {
        switch self {
        case .forehand: return "FOREHAND"
        case .backhand: return "BACKHAND"
        case .both: return "BOTH"
        case .none: return "NONE"
        }
    }

    var description: String {
        switch self {
        case .forehand: return "Double Forehand"
        case .backhand: return "Double Backhand"
        case .both: return "Both"
        case .none: return "None"
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

enum Sex {
    case male
    case female

    var code: String {
        switch self {
        case .male: return "M"
        case .female: return "F"
        }
    }

    var extendedCode: String {
        switch self {
        case .male: return "MALE"
        case .female: return "FEMALE"
        }
    }

    var description: String {
        switch self {
        case .male: return "Male"
        case .female: return "Female"
        }
    }
}

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

enum StartType {
    case fixed
    case follows
    case followsWithDelay
    case notBefore
    case actual

    var code: String {
        switch self {
        case .fixed: return "FX"
        case .follows: return "FO"
        case .followsWithDelay: return "FD"
        case .notBefore: return "NB"
        case .actual: return "AC"
        }
    }

    var extendedCode: String {
        switch self {
        case .fixed: return "FIXED"
        case .follows: return "FOLLOWS"
        case .followsWithDelay: return "FOLLOWSWITHDELAY"
        case .notBefore: return "NOTBEFORE"
        case .actual: return "ACTUAL"
        }
    }

    var description: String {
        switch self {
        case .fixed: return "Fixed"
        case .follows: return "Follows"
        case .followsWithDelay: return "Follows with delay"
        case .notBefore: return "Not before"
        case .actual: return "Actual"
        }
    }
}

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

enum DrawStatus {
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

// MARK: SurfaceCategory

enum SurfaceCategory {
    case hard
    case clay
    case artificial
    case grass

    var code: String {
        switch self {
        case .hard: return "H"
        case .clay: return "C"
        case .artificial: return "A"
        case .grass: return "G"
        }
    }

    var extendedCode: String {
        switch self {
        case .hard: return "HARD"
        case .clay: return "CLAY"
        case .artificial: return "ARTIFICIAL"
        case .grass: return "GRASS"
        }
    }

    var description: String {
        switch self {
        case .hard: return "Hard"
        case .clay: return "Clay"
        case .artificial: return "Artificial"
        case .grass: return "Grass"
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

// MARK: WheelchairClass

enum WheelchairClass {
    case quad
    case standard

    var code: String {
        switch self {
        case .quad: return "Q"
        case .standard: return "S"
        }
    }

    var extendedCode: String {
        switch self {
        case .quad: return "QUAD"
        case .standard: return "STANDARD"
        }
    }

    var description: String {
        switch self {
        case .quad: return "Quad"
        case .standard: return "Standard"
        }
    }
}
