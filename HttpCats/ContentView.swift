//
//  ContentView.swift
//  HttpCats
//
//  Created by Veli on 2.07.2020.
//  Copyright © 2020 Veli. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State var toDoText: String = ""
    @State var catsList: [HttpCat] = []
    var network: NetworkManager = NetworkManager(
    )
    var body: some View {
        VStack
        {
            Text("Hello, S1!")
            TextField("Hello", text: $toDoText)
            Button(action: {
                self.network.getHttpCats { (value) in
                    self.catsList = value
                }
            }) {
                Text("On Send Request")
            }
            Text(toDoText)
            catsList.isEmpty ? Text("oo") : Text("\(catsList.count)")
            List(catsList) {
                cat in

                Text(cat.welcomeDescription)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

