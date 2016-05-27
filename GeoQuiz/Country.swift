//
//  Country.swift
//  GeoQuiz
//
//  Copyright © 2016 Udacity. All rights reserved.
//

import Foundation

class Country {
    
    // MARK: Properties
    
    var languageCode = ""
    var languageName = ""
    var textToSpeak = ""
    var flagName = ""
  
    // MARK: Initializers
    
    init() {}
    
    init(name : String, bcp47Code: String, textToRead: String, flagImageName: String) {
        languageName = name
        languageCode = bcp47Code
        textToSpeak = textToRead
        flagName = flagImageName
    }
}