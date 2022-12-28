//
//  PlayersVM.swift
//  Tennis
//
//  Created by Pranav Suri on 31/1/21.
//

import AlgoliaSearchClient
import Combine
import Firebase
import LocalAuthentication
import SwiftUI

class PlayersVM: ObservableObject {
    private let index = SearchClient(appID: "ISTIKEBW1B", apiKey: "364cd4a18649ba904ddd898120e73b35").index(withName: "tennisTrackerUsers")
    @Published var hits: [Hit] = []
    @Published var pageNo = 0
    @Published var pages = 0
    @Published var totalHits = 0

    func resetData() {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        pageNo = 0
        pages = 0
        totalHits = 0
        hits = []
    }

    func loadMoreHits(queryString: String) {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        pageNo += 1
        getHits(queryString: queryString)
    }

    func getHits(queryString: String) {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        let query = Query("\(queryString)")
            .set(\.page, to: pageNo)
        index.search(query: query) { result in
            if case let .success(response) = result {
                DispatchQueue.main.async {
                    self.pages = response.nbPages ?? 0
                    self.pageNo = response.page ?? 1
                    self.totalHits = response.nbHits ?? 0
                }
                do {
                    self.hits += try response.extractHits()
                } catch {}
            }
        }
    }

    func getImageURL(uid _: String) {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
    }

    func generateImageURL(uid: String) {
        print("[Function Called]: \n\t [Name]: \(#function)\n\t [From File]: \(#fileID)")
        var url = URL(string: "")
        let storage = Storage.storage()
        let pathReference = storage.reference(withPath: "\(uid)/profilePicture/\(uid).jpg")
        pathReference.downloadURL { urlReturned, err in
            if let err = err {
                print("Error downloading URL: \(err.localizedDescription)")
            } else {
                url = urlReturned!
            }
        }
    }
}
