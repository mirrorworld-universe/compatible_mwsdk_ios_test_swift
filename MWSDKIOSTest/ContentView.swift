//
//  ContentView.swift
//  MWSDKIOSTest
//
//  Created by squall on 2023/12/6.
//

import SwiftUI
import MWSDK

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("AAA")
            Button(action: {
                            // 在这里添加第一个按钮的操作
                DispatchQueue.main.async {
                        MWSDK.startLogin { userInfo in
                            // 登录成功的回调
                            print("Login successful. UserInfo: \(userInfo ?? [:])")
                        }
                    }
                
                
                
                
                        }) {
                            Text("StartLogin")
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                        
                        Button(action: {
                            // 在这里添加第二个按钮的操作
                            print("Button LogTest tapped")
                        }) {
                            Text("LogTest")
                                .padding()
                                .foregroundColor(.white)
                                .background(Color.green)
                                .cornerRadius(10)
                        }
        }
        .padding()
    }
}

//func getLogMessage() -> String {
//        // 这里可以调用 MWSDK 中的其他方法获取日志信息
//        return "Log Message: \(MWSDK.logMessage("This is a message from app"))"
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
