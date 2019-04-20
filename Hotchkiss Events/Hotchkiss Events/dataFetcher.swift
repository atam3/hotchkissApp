//
//  dataFetcher.swift
//  Hotchkiss Events
//
//  Created by Alex Tam on 4/19/19.
//  Copyright © 2019 Alex Tam. All rights reserved.
//

import Foundation
class dataFetcher
{
    func fetchAthleticsEvents(completion:@escaping ([athleticsEvent]) -> ())
    {
        let url = URL(string: "https://raw.githubusercontent.com/atam3/hotchkissApp/master/Hotchkiss%20Events/Hotchkiss%20Events/athleticsSection/athleticsEvents.json")
        let request = NSMutableURLRequest(url: url!)
        let task = URLSession.shared.dataTask(with: request as URLRequest)
        { (data, respose, error) in
            DispatchQueue.main.async //getting back on the main thread
            {
                if let data = data
                {
                    let decoder = JSONDecoder.init()
                    let events = try! decoder.decode([athleticsEvent].self, from: data)
                    completion(events)
                }
                else //error handling
                {
                    print(error?.localizedDescription ?? "error")
                    return
                }
            }
        }
        
        task.resume()
    }
    
    func fetchFormalSchoolEvents()
    {
        
    }
}
