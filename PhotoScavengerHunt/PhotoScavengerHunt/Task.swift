//
//  Task.swift
//  PhotoScavengerHunt
//
//  Created by Chelsea Garcia on 2/29/24.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite local restaurant",
                 description: "Where do you go to enjoy a nice meal?"),
            Task(title: "Your favorite local cafe",
                 description: "Where do you go to get your favorite coffee/tea?"),
            Task(title: "Your go-to brunch place",
                 description: "Where do you go to get your brunch? "),
            Task(title: "Your favorite hiking spot",
                 description: "Where do you go to be one with nature?")
        ]
    }
}
