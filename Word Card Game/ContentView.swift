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
                .resizable()
                .ignoresSafeArea()
            
            VStack(alignment: .center, spacing: 40.0)
            {
                Spacer()
                Image("logo")
                Spacer()
                HStack
                {
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                Spacer()
                Image("button")
                Spacer()
                HStack
                {
                    VStack(spacing: 40.0)
                    {
                        Text("Player")
                        Text("0")
                            .font(.largeTitle)
                    }
                    .foregroundColor(.white)
                    
                    
                    VStack(spacing: 40.0)
                    {
                        Text("CPU")
                        Text("0")
                            .font(.largeTitle)
                    }
                    .foregroundColor(.white)
                    
                }
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
