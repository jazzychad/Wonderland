//
//  Extractors.swift
//  
//
//  Created by Chad Etzel on 11/16/22.
//

import Foundation


// MARK: - Array

public protocol ArrayReflection {}
extension Array: ArrayReflection {}

// MARK: - Dictionary

public protocol DictionaryReflection {}
extension Dictionary: DictionaryReflection {}

// MARK: - Set

public protocol SetReflection {}
extension Set: SetReflection {}
