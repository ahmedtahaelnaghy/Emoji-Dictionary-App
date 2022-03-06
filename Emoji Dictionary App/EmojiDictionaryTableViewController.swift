//
//  EmojiDictionaryTableViewController.swift
//  Emoji Dictionary App
//
//  Created by Ahmed Taha on 01/03/2022.
//

import UIKit

class EmojiDictionaryTableViewController: UITableViewController {
    
    var emojiArray: [Emoji] = [
                          Emoji(emojiName: "😀 - Grining Face", emojiDescription: "A typical smiley face."),
                          Emoji(emojiName: "😕 - Confused Face", emojiDescription: "A confused, puzzled face."),
                          Emoji(emojiName: "😍 - Heart Eyes", emojiDescription: "A smiley face with hearts for eyes."),
                          Emoji(emojiName: "👮🏼‍♀️ - Police Officer", emojiDescription: "A police officer wearing a blue cap with gold badge."),
                          Emoji(emojiName: "🐢 - Turtle", emojiDescription: "A cute turtle."),
                          Emoji(emojiName: "🐘 - Elephant", emojiDescription: "A gray elephant."),
                          Emoji(emojiName: "🍝 - Spaghetti", emojiDescription: "A plate of spaghetti."),
                          Emoji(emojiName: "🎲 - Die", emojiDescription: "A single die."),
                          Emoji(emojiName: "⛺️ - Tent", emojiDescription: "A small tent."),
                          Emoji(emojiName: "📚 - Stack of Books", emojiDescription: "Thee colored books stacked on each other."),
                          Emoji(emojiName: "💔 - Broken Heart", emojiDescription: "A red, broken heart."),
                          Emoji(emojiName: "💤 - Snore", emojiDescription: "Three blue 'z's."),
                          Emoji(emojiName: "🏁 - Checkered Flag", emojiDescription: "A black-and-white checkered flag.")
                         ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.cellLayoutMarginsFollowReadableWidth = true
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return emojiArray.count
        
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = emojiArray[indexPath.row].emojiName
        cell.detailTextLabel?.text = emojiArray[indexPath.row].emojiDescription
        
        cell.showsReorderControl = true
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 80
        
    }

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            emojiArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        } else if editingStyle == .insert {
            
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
            
        }
        
    }

}
