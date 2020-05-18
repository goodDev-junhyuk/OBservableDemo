//
//  SecondView.swift
//  OBservableDemo
//
//  Created by junhyuk on 2020/05/18.
//  Copyright © 2020 junhyuk. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    
    @EnvironmentObject var timerData: TimerData
    
    var body: some View {
        VStack {
            Text("Second View")
                .font(.largeTitle)
            Text("Timer Count = \(timerData.timeCount)")
                .font(.headline)
        }
        .padding()
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView().environmentObject(TimerData())
    }
}
