//
//  Currency.swift
//  CommonSample
//
//  Created by lambertpark on 2020/10/19.
//  Copyright © 2020 lambertpark. All rights reserved.
//

import Foundation

struct Currencies: Codable {
    
    let success: String
    let timestamp: TimeInterval
    let base: String
    let date: String
    let rates: [CurrencyRate]
    
}

struct CurrencyRate: Codable {
    
    let currencyIso: String
    let rate: Double
    
    // 서버에서 응답 받은 데이터의 필드명이 모델의 프라퍼티와 이름이 동할하면,
    // 코팅키 적용하지 않아도 됨.
    enum CodingKeys: String, CodingKey {
        case currencyIso
        case rate
    }
    
}
