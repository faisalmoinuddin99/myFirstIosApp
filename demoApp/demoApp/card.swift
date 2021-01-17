//
//  card.swift
//  demoApp
//
//  Created by ZAREEN NAUSHAD on 17/01/21.
//

import SwiftUI

struct card: View {
    var course: Course
    var body: some View {
        ZStack{
            Image(course.courseImage).offset(y : 40)
            
            VStack{
                Text(course.courseName)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Text(course.coursePrice)
                    .font(.headline)
                    .fontWeight(.regular)
                    .foregroundColor(Color.white)
            }.offset(y : -220)
            
            Button(action: ({
                print("Button Clicked")
            }), label: {
                HStack{
                    Text("Buy Now")
                        .fontWeight(.heavy)
                        .foregroundColor(Color("LCOdarkpink"))
                    Image(systemName: "arrow.right.square")
                        .accentColor(Color("LCOdarkpink"))
                }
                .padding(.horizontal, 40)
                .padding(.vertical, 10)
                .background(Color.white)
                .clipShape(Capsule())
            }).offset(y : -150)
            
            Text("LearnCodeOnline.in")
                .frame(width: 370, height: 30)
                .foregroundColor(Color("LCOdarkpink"))
                .background(Color.white)
                .offset(y: 240)
                .rotationEffect(.init(degrees: 15))
        }
        .frame(width: 312, height: 520)
        .background(course.courseColor)
        .cornerRadius(18)
    }
}

struct card_Previews: PreviewProvider {
    static var previews: some View {
        card(course: courseList[2])
            .previewLayout(.sizeThatFits)
    }
}
