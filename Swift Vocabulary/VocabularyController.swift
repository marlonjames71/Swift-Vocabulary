//
//  VocabularyController.swift
//  Swift Vocabulary
//
//  Created by Marlon Raskin on 5/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation


class VocabularyController {
	let vocabWords: [VocabularyWord]
	
	init() {
		self.vocabWords = [VocabularyWord(word: "String Literal", definition: "A collection of characters. These characters are surrounded by double quotes to tell Swift and Xcode what characters are contained in that particular string."),
					  VocabularyWord(word: "Struct", definition: "A custom data type that can have one or more properties and one or more methods. Unlike classes, structs are value types."),
					  VocabularyWord(word: "Class", definition: "A custom data type that can have one or more properties and one or more methods. Unlike structs, classes are reference types."),
					  VocabularyWord(word: "Codable", definition: "A protocol that allows easy conversion between a struct or a class and JSON or XML.")]
	}
}
