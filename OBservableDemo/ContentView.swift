//
//  ContentView.swift
//  OBservableDemo
//
//  Created by junhyuk on 2020/05/16.
//  Copyright © 2020 junhyuk. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var timerData: TimerData
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                Text("Timer count = \(timerData.timeCount)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                Button(action: resetCount) {
                    
                    Text("Reset Counter")
                }
                
                NavigationLink(destination: SecondView()) {
                    Text("다음 화면")
                }
                .padding()
            }
        }
    }
    
    func resetCount() {
        
        timerData.resetCount()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(TimerData())
    }
}
