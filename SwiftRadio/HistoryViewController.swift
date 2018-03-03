//
//  HistoryViewController.swift
//  SwiftRadio
//
//  Created by Ryan Maksymic on 2018-03-02.
//  Copyright © 2018 matthewfecher.com. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {
  
  @IBOutlet weak var tableView: UITableView!
  
  var trackHistory = [(track: Track, date: Date)]()
  let MAX_HISTORY_COUNT = 20
  
  override func viewDidLoad() {
    
    super.viewDidLoad()
    
    tableView.backgroundColor = .clear
    tableView.backgroundView = nil
    tableView.separatorStyle = .none
    
    //loadTestData()
  }
  
  /*
   func loadTestData()
   {
   let track1 = Track(title: "Back In The USSR", artist: "The Beatles")
   let track2 = Track(title: "Fire", artist: "Jason Collett")
   let track3 = Track(title: "Holding On", artist: "The War On Drugs")
   let track4 = Track(title: "Caring Is Creepy", artist: "The Shins")
   let track5 = Track(title: "Sleeptalker", artist: "TOPS")
   let track6 = Track(title: "We Stayed Up All Night", artist: "Tourist")
   
   trackHistory = [track1, track2, track3, track4, track5, track6]
   }
   */
}

extension HistoryViewController: UITableViewDelegate, UITableViewDataSource
{
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return trackHistory.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryCell", for: indexPath) as! HistoryTableViewCell
    
    // alternate background color
    cell.backgroundColor = (indexPath.row % 2 == 0) ? UIColor.clear : UIColor.black.withAlphaComponent(0.2)
    
    let trackHistoryItem = trackHistory[indexPath.row]
    
    if let artworkImage = trackHistoryItem.track.artworkImage {
      cell.albumImageView.image = artworkImage
    }
    
    cell.songLabel.text = trackHistoryItem.track.title
    cell.artistLabel.text = trackHistoryItem.track.artist
    
    let calendar = Calendar.current
    let components = calendar.dateComponents([.month, .day, .hour, .minute], from: trackHistoryItem.date)
    cell.playDateLabel.text = "Played at \(components.hour!):\(components.minute!) on \(components.month!)/\(components.day!)"
    
    return cell
  }
}
