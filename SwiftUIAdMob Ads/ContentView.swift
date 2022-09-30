//
//  ContentView.swift
//  SwiftUIAdMob Ads
//
//  Created by Theappmedia on 9/30/22.
//

import SwiftUI
import GoogleMobileAds

struct ContentView: View {
    @State var nativeAdLoaded = false
    let interstitial = InterstitialAd()
    var body: some View {
        VStack{
            Spacer()
            Button {
                interstitial.adsLoad()
            } label: {
                Text("Load Interstitial Ad")
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(15)
            }
            Spacer()
            Button {
                interstitial.adsShow()
            } label: {
                Text("Show Interstitial Ad")
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(15)
            }
            Spacer()
            BannerVC()
                .frame(width: UIScreen.main.bounds.width, height: 60)
            Spacer()
            NativeAdView(adLoaded: $nativeAdLoaded)
                .frame(width: UIScreen.main.bounds.width, height: nativeAdLoaded ? 124:0)
            Spacer()
        }
        .frame( maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.gray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
