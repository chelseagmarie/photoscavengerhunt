//
//  TaskCell.swift
//  PhotoScavengerHunt
//
//  Created by Chelsea Garcia on 2/29/24.
//

import UIKit

class TaskCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var completedImageView: UIImageView!
    
    func configure(with task: Task) {
        titleLabel.text = task.title
        titleLabel.textColor = task.isComplete ? .secondaryLabel : .label
        completedImageView.image = UIImage(systemName: task.isComplete ? "checkmark.circle" : "circle")?.withRenderingMode(.alwaysTemplate)
        // completedImageView.tintColor = task.isComplete ? .systemBlue : .tertiaryLabel
    }

}
