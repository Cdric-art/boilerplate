//
//  ContentView.swift
//  boilerplate
//
//  Created by Cédric Evrard on 13/12/2021.
//
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello SwiftUI in AppCode !")
            .padding()
    }
}

class ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    #if DEBUG
    @objc class func injected() {
        UIApplication.shared.windows.first?.rootViewController =
                UIHostingController(rootView: ContentView())
    }
    #endif
}
