//
//  LocalNotificationBootcamp.swift
//  SwiftUIThinking
//
//  Created by Eddy on 2023/06/08.
//

import SwiftUI
import UserNotifications
import CoreLocation

class NotificationManager {

    static let instacne = NotificationManager()

    func requestAuthorization() {
        let options: UNAuthorizationOptions = [.alert, .sound, .badge]
        UNUserNotificationCenter.current().requestAuthorization(options: options) { success, error in
            if let error = error {
                print("ERROR: \(error)")
            } else {
                print("SUCCESS")
            }
        }
    }

    func scheduleNotification() {
        let content = UNMutableNotificationContent()
        content.title = "This is my first notification!"
        content.subtitle = "This was soooo easy"
        content.sound = .default
        content.badge = 1

        // time
//        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5.0, repeats: false)


        // calendar
//        var dateComponent = DateComponents()
//        dateComponent.hour = 20
//        dateComponent.minute = 26
//        dateComponent.weekday = 1
//
//        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponent, repeats: true)

        // location
        let coordinate = CLLocationCoordinate2D(
            latitude: 40.00,
            longitude: 50.00)

        let region = CLCircularRegion(
            center: coordinate,
            radius: 100,
            identifier: UUID().uuidString)
        region.notifyOnEntry = true
        region.notifyOnExit = true
        let trigger = UNLocationNotificationTrigger(region: region, repeats: true)

        let request = UNNotificationRequest(
            identifier: UUID().uuidString,
            content: content,
            trigger: trigger)
        UNUserNotificationCenter.current().add(request)
    }

    func cancelNotification() {
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
        UNUserNotificationCenter.current().removeAllDeliveredNotifications()
    }
}

struct LocalNotificationBootcamp: View {
    var body: some View {
        VStack(spacing: 40) {
            Button("Request permission") {
                NotificationManager.instacne.requestAuthorization()
            }

            Button("Schedule notification") {
                NotificationManager.instacne.scheduleNotification()
            }
            Button("Cancel notification") {
                NotificationManager.instacne.cancelNotification()
            }
        }
        .onAppear {
            UIApplication.shared.applicationIconBadgeNumber = 0
        }
    }
}

struct LocalNotificationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        LocalNotificationBootcamp()
    }
}
