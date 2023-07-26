//
//  ContentView.swift
//  VideoDemo
//
//  Created by Marisa Loraas on 7/20/23.
//
import Foundation
import SwiftUI
import AVKit

struct ContentView: View {
    var body: some View {
        
        VStack(alignment: .leading){
            Text("Demo Video Player").font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.white).padding()
            HStack{
                Image("Icon").resizable().aspectRatio(contentMode: .fit).padding(.top).clipShape(Circle())
                    .overlay {
                        Circle().stroke(.purple, lineWidth: 4)
                    }
                    .shadow(radius: 7)
                    .offset(x: 0, y: -50)
                    .padding()
                Text("Username").font(.headline).fontWeight(.semibold).foregroundColor(Color(hue: 0.795, saturation: 0.348, brightness: 0.87)).padding(.leading).offset(x: -50, y: 20)
            }.aspectRatio(contentMode: .fit)
            
            VideoViewControl(videoURL: URL(filePath: "/Users/marisa.loraas/Desktop/VideoDemoX/VideoDemoX/Base.lproj/TearsOfSteel.mp4")).offset(y: -100).padding(.top)
            HStack{
                Text("Tears Of Steel").font(.title).fontWeight(.heavy).foregroundColor(Color.white).padding()
                Spacer()
                Text("12:14").font(.headline).fontWeight(.heavy).foregroundColor(Color(hue: 0.795, saturation: 0.348, brightness: 0.87)).padding()
            }.offset(y:-110)
            
            Text("Wow what a video, watch it again maybe until I get other videos to work.").font(.headline).fontWeight(.heavy).foregroundColor(Color(hue: 0.792, saturation: 0.348, brightness: 0.87)).padding().offset(y:-130)
        }.background(Color(hue: 0.801, saturation: 0.592, brightness: 0.311))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


