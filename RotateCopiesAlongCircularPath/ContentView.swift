//
//  ContentView.swift
//  RotateCopiesAlongCircularPath
//
//  Created by ramil on 25/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var scale = true
    
    var body: some View {
        ZStack {
            Circle()
                .stroke()
                .frame(width: 75, height: 75)
                .opacity(0)
            
            roundrect()
                .foregroundColor(.blue)
            roundrect()
                .foregroundColor(.green)
                .rotationEffect(.degrees(-90))
            roundrect()
                .foregroundColor(.pink)
                .rotationEffect(.degrees(90))
            roundrect()
                .foregroundColor(.orange)
                .rotationEffect(.degrees(180))
            roundrect()
                .foregroundColor(.green)
                .rotationEffect(.degrees(-45))
            roundrect()
                .foregroundColor(.purple)
                .rotationEffect(.degrees(45))
            roundrect()
                .foregroundColor(.yellow)
                .rotationEffect(.degrees(-135))
            roundrect()
                .foregroundColor(.red)
                .rotationEffect(.degrees(135))
        }.scaleEffect(scale ? 1.1 : 2.8)
            .onTapGesture {
                self.scale.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct roundrect: View {
    var body: some View {
        Capsule()
            .offset(y: 38)
            .frame(width: 50, height: 70)
            .opacity(0.6)
    }
}
