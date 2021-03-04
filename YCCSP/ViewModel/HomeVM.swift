//
//  HomeVM.swift
//  YCCSP
//
//  Created by Zay Yar Htun on 3/4/21.
//

import Foundation

class HomeVM {
    func getSPList() {
        APIManager.sharedInstance.sendRequest(url: APIRoute.SPList, method: .post) { (responseJSON, responseError) in
            if let json = responseJSON {
                let list = try? JSONDecoder().decode([SPPerson].self, from: json["list"].rawData())
                print(list as Any)
            }
            if let error = responseError {
                switch error {
                case .ConnectionError:
                    print("Connection Error")
                case .ServerError:
                    print("Server Error")
                }
            }
        }
    }
}
