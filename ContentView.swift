//
//  ContentView.swift
//  warchallenge
//
//  Created by Raghauv Saravanan on 8/5/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View
    {
        ZStack()
        {
            
            Image("background").blur(radius: 3.0).ignoresSafeArea()
            
            
            VStack()
            {
                Spacer()
                Image("logo")
                Spacer()
                HStack()
                {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button (action: {
                    //Generate Random Number
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                   //Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    //Update the score
                    if playerRand>cpuRand
                    {
                        playerScore += 1
                    }
                    
                    if playerRand<cpuRand
                    {
                        cpuScore += 1
                    }
                    
                    
                    
                    
                    
                }, label: {
                    Image("dealbutton")
                })

                Spacer()
                HStack()
                {
                    Spacer()
                    
                    VStack(spacing: 12.0)
                    {
                        Text("Player")
                            .foregroundColor(Color.white)
                    
                        Text(String(playerScore)).foregroundColor(Color.white).frame(height: 2.0)
                        
                    }
                    Spacer()
                    VStack(spacing: 12.0)
                    {
                        Text("CPU")
                            .foregroundColor(Color.white)
                        Text(String(cpuScore)).foregroundColor(Color.white).frame(height: 2.0)
                    }
                    Spacer()
                }
                Spacer()
                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
