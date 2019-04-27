//
//  eventReader.swift
//  Hotchkiss Events
//
//  Created by Alex Tam on 1/31/19.
//  Copyright © 2019 Alex Tam. All rights reserved.
//

import Foundation
class eventReader
{
    var athleticsEvents = [athleticsEvent]()
    func readAthleticsEvents (file: String) //creating function to read from file
    {
        let decoder = JSONDecoder.init()
        let url = Bundle.main.url(forResource: "athleticsEvents", withExtension: "json")
        let data = try! Data(contentsOf: url!)
        let events = try! decoder.decode([athleticsEvent].self, from: data)
        self.athleticsEvents = events
    }
    //for formal events
    var formalSchoolEvents = [formalSchoolEvent]()
    func readFormalSchoolEvents (file: String) //creating function to read from file
    {
        let decoder = JSONDecoder.init()
        let url = Bundle.main.url(forResource: "formalSchoolEvents", withExtension: "json")
        let data = try! Data(contentsOf: url!)
        let events = try! decoder.decode([formalSchoolEvent].self, from: data)
        self.formalSchoolEvents = events
    }
}

