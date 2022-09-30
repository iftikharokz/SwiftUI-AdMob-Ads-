//
//  SwiftUIAdMob_AdsApp.swift
//  SwiftUIAdMob Ads
//
//  Created by Theappmedia on 9/30/22.
//

import SwiftUI
import GoogleMobileAds

@main
struct SwiftUIAdMob_AdsApp: App {
    init(){
        GADMobileAds.sharedInstance().start(completionHandler: nil)
        GADMobileAds.sharedInstance().requestConfiguration.testDeviceIdentifiers = [ GADSimulatorID ]
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
