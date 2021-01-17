//
//  testCard.swift
//  demoApp
//
//  Created by ZAREEN NAUSHAD on 17/01/21.
//

import SwiftUI

struct testCard: View {
    var testItem : testCourse
    var body: some View {
        ZStack{
            Image(testItem.testImage)
                
                
                
            VStack{
                Text(testItem.testName)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                Text("Marks: " + testItem.testMarks)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                Text("Minute: " + testItem.testTime)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                Text("Question: " + testItem.testQuestion)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
            }.offset(y : -160)
            
            Button(action: ({
                print("Button Clicked")
            }), label: {
                HStack{
                    Text("Take Test Now")
                        .fontWeight(.heavy)
                        .foregroundColor(Color("LCOdarkpink"))
                    Image(systemName: "arrow.right.square")
                        .accentColor(Color("LCOdarkpink"))
                }
                .padding(.horizontal, 40)
                .padding(.vertical, 10)
                .background(Color.white)
                .clipShape(Capsule())
            }).offset(y : 0)
        }
        .frame(width: 280, height: 430)
        .background(testItem.testColor)
        .cornerRadius(18)
    }
}

struct testCard_Previews: PreviewProvider {
    static var previews: some View {
        testCard(testItem: testList[1])
            .previewLayout(.sizeThatFits)
    }
}
