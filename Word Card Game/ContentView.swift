//
//  ContentView.swift
//  Word Card Game
//
//  Created by Kaleb on 27/03/23.
//

import SwiftUI

struct ContentView: View
{
    var body: some View
    {
        ZStack
        {
            Image("background-plain")
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 40.0)
            {
                Image("logo")
                
                HStack
                {
                    Spacer()
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                    Spacer()
                }
                
                Image("button")
                
                HStack
                {
                    Spacer()
                    VStack(spacing: 40.0)
                    {
                        Text("Player")
                        Text("0")
                            .font(.largeTitle)
                    }
                    .foregroundColor(.white)
                    
                    
                    
                    Spacer()
                    
                    VStack(spacing: 40.0)
                    {
                        Text("CPU")
                        Text("0")
                            .font(.largeTitle)
                    }
                    .foregroundColor(.white)
                    
                    
                    
                    Spacer()
                }
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
