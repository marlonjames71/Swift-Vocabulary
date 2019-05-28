//
//  ViewController.swift
//  SwiftVocabularyProjectTime
//
//  Created by Marlon Raskin on 5/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit


class DefinitionViewController: UIViewController {
	
	var vocabWord: VocabularyWord? {
		didSet {
			updateViews()
		}
	}

	@IBOutlet var wordLabel: UILabel!
	@IBOutlet var definitionTextView: UITextView!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}

	func updateViews() {
		if let vocabWord = vocabWord {
			wordLabel.text = vocabWord.word
			definitionTextView.text = vocabWord.definition
		}
	}
	
	

}
