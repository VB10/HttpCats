//
//  CatCardView.swift
//  HttpCats
//
//  Created by Veli on 4.07.2020.
//  Copyright © 2020 Veli. All rights reserved.
//

import SwiftUI

struct CatCardView: View {

    var httpCat: HttpCat
    var body: some View {
        HStack {
            Text("\(httpCat.statusCode)").foregroundColor(.white).background(Circle().frame(width: 50, height: 50, alignment: .center)).padding(15).foregroundColor(.red)
            Text(httpCat.welcomeDescription)
            VStack {
                Text(httpCat.imageURL)
            }
        }.padding(15).border(Color.black.opacity(0.1), width: 2).shadow(radius: 15)
    }
}

struct CatCardView_Previews: PreviewProvider {
    static var previews: some View {
        CatCardView(httpCat: HttpCat(welcomeDescription: "veli", imageURL: "aaa", statusCode: 12))
    }
}
