//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Marlon Raskin on 5/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

	let vocabController = VocabularyController()
	
	
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabController.vocabWords.count
    }
	
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
		let word = self.vocabController.vocabWords[indexPath.row]
		cell.textLabel?.text = word.word
		
        return cell
    }


	
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "ShowDefinition" {
			if let definitionVC = segue.destination as? DefinitionViewController,
				let indexPath = self.tableView.indexPathForSelectedRow?.row {
				let word = vocabController.vocabWords[indexPath]
				
				definitionVC.vocabWord = word
			}
		}
    }
}
