//
//  EmployeeSearch.swift
//  Colleagues
//
//  Created by Nguyen Vinh on 10/13/15.
//  Copyright © 2015 Razeware LLC. All rights reserved.
//

import CoreSpotlight

extension Employee {
  public static let domainIdentifier = "com.raywenderlich.colleagues.employee"
  public var userActivityUserInfo: [NSObject: AnyObject] {
    return ["id": objectId]
  }
  public var userActivity: NSUserActivity {
    let activity = NSUserActivity(activityType: Employee.domainIdentifier)
    
    activity.title = name
    activity.userInfo = userActivityUserInfo
    activity.keywords = [email, department]
    
    return activity
  }
}
