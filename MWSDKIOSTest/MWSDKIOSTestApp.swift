//
//  MWSDKIOSTestApp.swift
//  MWSDKIOSTest
//
//  Created by squall on 2023/12/6.
//

import SwiftUI
import MWSDK

@main
struct MWSDKIOSTestApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onOpenURL { URL in
                    MWSDK.handleOpen(URL);
                }
        }
    }
}
