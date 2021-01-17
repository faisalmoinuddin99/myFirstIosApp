//
//  courseModel.swift
//  demoApp
//
//  Created by ZAREEN NAUSHAD on 17/01/21.
//

import SwiftUI

struct Course: Identifiable {
    var id = UUID()
    var courseName : String
    var coursePrice : String
    var courseImage : String
    var courseColor : Color
}
