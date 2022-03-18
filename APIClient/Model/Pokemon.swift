//
//  Pokemon.swift
//  CommonSample
//
//  Created by lambertpark on 2020/09/25.
//  Copyright © 2020 lambertpark. All rights reserved.
//

import Foundation
/**
 [샘플 데이터  구조]
 {
     "count":1050,
     "next":"https://pokeapi.co/api/v2/pokemon?offset=20&limit=20",
     "previous":null,
     "results":[
         {
             "name":"bulbasaur",
             "url":"https://pokeapi.co/api/v2/pokemon/1/"
         },
         {
             "name":"ivysaur",
             "url":"https://pokeapi.co/api/v2/pokemon/2/"
         },
         {
             "name":"venusaur",
             "url":"https://pokeapi.co/api/v2/pokemon/3/"
         },
         {
             "name":"charmander",
             "url":"https://pokeapi.co/api/v2/pokemon/4/"
         },
         {
             "name":"charmeleon",
             "url":"https://pokeapi.co/api/v2/pokemon/5/"
         },
         {
             "name":"charizard",
             "url":"https://pokeapi.co/api/v2/pokemon/6/"
         },
         {
             "name":"squirtle",
             "url":"https://pokeapi.co/api/v2/pokemon/7/"
         },
         {
             "name":"wartortle",
             "url":"https://pokeapi.co/api/v2/pokemon/8/"
         },
         {
             "name":"blastoise",
             "url":"https://pokeapi.co/api/v2/pokemon/9/"
         },
         {
             "name":"caterpie",
             "url":"https://pokeapi.co/api/v2/pokemon/10/"
         },
         {
             "name":"metapod",
             "url":"https://pokeapi.co/api/v2/pokemon/11/"
         },
         {
             "name":"butterfree",
             "url":"https://pokeapi.co/api/v2/pokemon/12/"
         },
         {
             "name":"weedle",
             "url":"https://pokeapi.co/api/v2/pokemon/13/"
         },
         {
             "name":"kakuna",
             "url":"https://pokeapi.co/api/v2/pokemon/14/"
         },
         {
             "name":"beedrill",
             "url":"https://pokeapi.co/api/v2/pokemon/15/"
         },
         {
             "name":"pidgey",
             "url":"https://pokeapi.co/api/v2/pokemon/16/"
         },
         {
             "name":"pidgeotto",
             "url":"https://pokeapi.co/api/v2/pokemon/17/"
         },
         {
             "name":"pidgeot",
             "url":"https://pokeapi.co/api/v2/pokemon/18/"
         },
         {
             "name":"rattata",
             "url":"https://pokeapi.co/api/v2/pokemon/19/"
         },
         {
             "name":"raticate",
             "url":"https://pokeapi.co/api/v2/pokemon/20/"
         }
     ]
 }
 */

/// [스터디 자료]
/// https://developer.apple.com/documentation/foundation/archives_and_serialization/encoding_and_decoding_custom_types
/// https://medium.com/hackernoon/everything-about-codable-in-swift-4-97d0e18a2999
/// !!!: 모델 필드의 값이 Null일 수도 있는 경우 반드시 옵셔널로 선언할 것!
/// API  Codable 모델 샘플.
struct Pokemons: Codable {
    let count: Int
    let next: String
    let previous: String?
    let results: [Pokemon]
}

struct Pokemon: Codable {
    let name: String?
    let url: String?

    // 서버에서 응답 받은 데이터의 필드명이 모델의 프라퍼티와 이름이 동할하면,
    // 코팅키 적용하지 않아도 됨.
    enum CodingKeys: String, CodingKey {
        case name
        case url
    }
}
