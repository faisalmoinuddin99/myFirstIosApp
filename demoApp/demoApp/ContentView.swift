//
//  ContentView.swift
//  demoApp
//
//  Created by ZAREEN NAUSHAD on 17/01/21.
//

import SwiftUI

struct ContentView: View {
    
    var courses: [Course] = courseList
    var body: some View {
        ScrollView{
            VStack{
                Text("Courses")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                ScrollView(.horizontal){
                    HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,
                           spacing: 20
                    ){
                        ForEach(courses) { item in
                            card(course: item)
//                            Text("Hi")
                        }
                    }
                }
            }
            VStack{
                Text("Bundles")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                ScrollView(.horizontal){
                    HStack{
                        ForEach(courses) { item in
                            card(course: item)
//                            Text("Hi")
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(courses: courseList)
    }
}
