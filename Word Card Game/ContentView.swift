//
//  ContentView.swift
//  Word Card Game
//
//  Created by Kaleb on 27/03/23.
//

import SwiftUI

struct ContentView: View
{
    //@State es una propiedad que cambio el atributo de la variable diciendo que es especial
    @State var playerCard = "card2"
    @State var cpuCard = "card3"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
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
                    deal()
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
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    
                    
                    Spacer()
                    
                    VStack()
                    {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            
                    }
                    Spacer()
                    
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
    }
    
    func deal()
    {
        // creamos las variables para usarlas y compararlas para dar el puntaje al jugador o al CPU
        let playerCardValue = Int.random(in: 2...14)
        let cpuCardValue = Int.random(in: 2...14)
        // Va a randomizar las cartas del Player
        playerCard = "card" + String(playerCardValue)
        // Va a randomizar las cartas del CPU
        cpuCard = "card" + String(cpuCardValue)
        // Actualizar los Scores
        if playerCardValue > cpuCardValue
        {
            playerScore += 1 // incremento de 1
        }
        else if cpuCardValue > playerCardValue
        {
            cpuScore += 1 // incremento de 1
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
