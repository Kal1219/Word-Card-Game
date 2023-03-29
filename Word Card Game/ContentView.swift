//
//  ContentView.swift
//  Word Card Game
//
//  Created by Kaleb on 27/03/23.
//

import SwiftUI

struct ContentView: View
{
    var playerCard = "card2"
    var cpuCard = "card3"
    
    var body: some View
    {
        ZStack
        {
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack()
            {
                Spacer()
                Image("logo")
                Spacer()
                HStack
                {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button {
                    print("toma tus cartas")
                } label: {
                    Image("button")
                }
                
                Spacer()
                HStack
                {
                    Spacer()
                    VStack()
                    {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.largeTitle)
                    }
                    
                    
                    Spacer()
                    
                    VStack()
                    {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.largeTitle)
                            
                    }
                    Spacer()
                    
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView()
    }
}
