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
			if let _ = view {
				updateViews()
			}
		}
	}

	@IBOutlet var wordLabel: UILabel!
	@IBOutlet var definitionTextView: UITextView!
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}

	func updateViews() {
		if let unwrappedVocabWord = vocabWord {
			wordLabel.text = unwrappedVocabWord.word
			definitionTextView.text = unwrappedVocabWord.definition
		}
	}
	
	

}

