//
//  HistoryTableViewCell.swift
//  SwiftRadio
//
//  Created by Ryan Maksymic on 2018-03-02.
//  Copyright © 2018 matthewfecher.com. All rights reserved.
//

import UIKit

class HistoryTableViewCell: UITableViewCell {
  
  @IBOutlet weak var songLabel: UILabel!
  @IBOutlet weak var artistLabel: UILabel!
  @IBOutlet weak var playDateLabel: UILabel!
  @IBOutlet weak var albumImageView: UIImageView!
  
  override func awakeFromNib() {
    super.awakeFromNib()
  }
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
  }
}
