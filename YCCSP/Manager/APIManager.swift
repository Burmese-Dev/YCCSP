//
//  APIManager.swift
//  YCCSP
//
//  Created by Zay Yar Htun on 3/4/21.
//

import Foundation
import Alamofire
import SwiftyJSON

enum APIError: Error {
    case ConnectionError
    case ServerError
}

typealias Completion = (JSON?, APIError?) -> Void

enum APIRoute: URLConvertible {
    
    case SPList
    
    var path: String {
        switch self {
        case .SPList:
            return "node"
        }
    }
    
    func asURL() throws -> URL {
        switch self {
        case .SPList:
            let url = try Constants.API.baseURL.asURL()
            return url.appendingPathComponent(path)
        }
    }
}

class Connectivity {
    class func isConnectedToInternet() -> Bool {
        return NetworkReachabilityManager()?.isReachable ?? false
    }
}

public class APIManager {
    
    public static let sharedInstance = APIManager.init()
    
    private init() {}
    
    func sendRequest(url: URLConvertible, method: HTTPMethod?, headers: HTTPHeaders? = nil, parameters: Parameters? = nil, completion: @escaping Completion) {
        if !Connectivity.isConnectedToInternet() {
            completion(nil, .ConnectionError)
            return
        }
        AF.request(url, method: method ?? .get, parameters: parameters, headers: headers).responseJSON { response in
            switch response.result {
            case .success:
                completion(JSON(response.data as Any), nil)
            case .failure(_ ):
                completion(nil, .ServerError)
            }
        }
    }
}
