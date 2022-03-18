//
//  Converter.swift
//  CommonSample
//
//  Created by lambertpark on 2020/10/21.
//  Copyright © 2020 lambertpark. All rights reserved.
//

import Foundation

struct Converter {
    
    let success: Bool
    let timestamp: TimeInterval
    let base: String
    let date: String
    let rates : [Currency]
    
}

extension Converter {
    
    static func parseObject(dictionary: [String : AnyObject]) -> Converter {
        if let success = dictionary["success"] as? Bool,
           let timestamp = dictionary["timestamp"] as? TimeInterval,
            let base = dictionary["base"] as? String,
            let date = dictionary["date"] as? String,
            let rates = dictionary["rates"] as? [String: Double] {
            
            let finalRates: [Currency] = rates.compactMap({ Currency(currencyIso: $0.key, rate: $0.value) })
            let conversion = Converter(success: success, timestamp: timestamp, base: base, date: date, rates: finalRates)
            
            return conversion
        } else {
            fatalError ("Unable to parse conversion rate")
        }
    }
}
