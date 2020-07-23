//
//  MockAirlinePreviewService.swift
//  AirlinesWorkshop
//
//  Created by Craig Clayton on 7/12/20.
//

import Foundation

struct MockAirlinePreviewService {
    
    
    static func locationdata() -> [LocationItem] {
        guard let url = Bundle.main.url(forResource: "locations", withExtension: "json"),
        
            let data = try? Data(contentsOf: url)
            else{
                return[]
        }
        
        let decoder  = JSONDecoder()
        let array = try? decoder.decode([LocationItem].self, from: data)
        dump(array)
        
        return array ?? []
    }
    
}
