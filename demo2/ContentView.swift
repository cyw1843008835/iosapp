//
//  ContentView.swift
//  demo2
//
//  Created by yw c on 2019/12/29.
//  Copyright © 2019 yw c. All rights reserved.
//

import SwiftUI
struct joke{
    var setup:String
    var punchline:String
    var rating:String
}

struct ContentView: View {
    let jokes = [
        joke(setup:"a1",punchline:"a2",rating:"a3"),
        joke(setup:"b1",punchline:"b2",rating:"b3")
    ]
    func sysDate() ->String{
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy年MM月dd日"
        return formatter.string(from: Date())
    }
    var body: some View {
        HStack {
            VStack {
                Text("社内に入退場管理　V1.0")
                    .font(.title)
                HStack {
                    Text("入退場一覧(\(sysDate()))")
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("前日")
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("当日")
                    }
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("翌日")
                    }
                    
                }
                
                List {
                    ForEach(jokes, id: \.setup){
                        joke in Text(joke.setup)
                    }
                }
                
            }
            
            VStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("ユーザー登録")
                }
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("入場")
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .font(.title)
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.white, lineWidth: 5)
                    )
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("退場")
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .font(.title)
                        
                        .cornerRadius(40)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color.white, lineWidth: 5)
                    )
                }
                Spacer()
            }
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
