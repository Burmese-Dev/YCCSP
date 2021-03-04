//
//  Constants.swift
//  YCCSP
//
//  Created by Zay Yar Htun on 3/4/21.
//

struct Constants {
    struct API {
        // The base api url of www.socialpunishment.com
        // Pagination needs to be set this sample httpbody, {"limit": 12, "sort": {"createdAt": "desc"}, "skip": 36}
        #if UAT
        // UAT app base url here
        static let baseURL = "https://api2.socialpunishment.com/"
        #else
        // PROD app base url here
        static let baseURL = ""
        #endif
    }
}
