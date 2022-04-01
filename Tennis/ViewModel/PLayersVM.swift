//
//  PlayersVM.swift
//  Tennis
//
//  Created by Pranav Suri on 31/1/21.
//

import Combine
import Firebase
import LocalAuthentication
import SwiftUI
import AlgoliaSearchClient

class PlayersVM: ObservableObject {
    
    private let index = SearchClient(appID: "FLI02CKHLZ", apiKey: "da18a12522a494f64204acf9c6f09e6c").index(withName: "dev_users")
    @Published var hits: [Hit] = []
//    @Published var viewState = ViewState.state
    
    @Published var pageNo = 0
    @Published var pages = 0
    @Published var totalHits = 0
    
    func resetData(){
        print("[Function Called]: \(#function)")
        pageNo = 0
        pages = 0
        totalHits = 0
        hits = []
    }
    func loadMoreHits(queryString: String){
        print("[Function Called]: \(#function)")
        self.pageNo += 1
        getHits(queryString: queryString)
    }
    func getHits(queryString: String){
        print("[Function Called]: \(#function)")
        let query = Query("\(queryString)")
            .set(\.page, to: pageNo)
        index.search(query: query){ result in
            if case .success(let response) = result{
                self.pages = response.nbPages ?? 0
                self.pageNo = response.page ?? 1
                self.totalHits = response.nbHits ?? 0
                print("Total Hits: \(response.nbHits)")
                print("Pages: \(response.nbPages)")
                print("Page no.: \(response.page)")
                do{
                    self.hits += try response.extractHits()
                } catch let error{
                    print("Erros: \(error)")
                }
            }
        }
    }
    func getImageURL(uid: String){
        print("[Function Called]: \(#function)")
    }
    func generateImageUrl(uid: String){
        print("[Function Called]: \(#function)")
        var url = URL(string: "")
        let storage = Storage.storage()
        let pathReference = storage.reference(withPath: "\(uid)/profilePicture/\(uid).jpg")
        pathReference.downloadURL { urlReturned, err in
            if let err = err {
                print("Error downloading URL: \(err.localizedDescription)")
            }else{
                url = urlReturned!
            }
            print("\(url?.absoluteString)")
        }
    }
    
    
}
