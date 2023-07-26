//
//  VideoViewControl.swift
//  VideoDemo
//
//  Created by Marisa Loraas on 7/21/23.
//

import Foundation
import AVKit
import SwiftUI

struct VideoViewControl: UIViewControllerRepresentable {
    var videoURL: URL?

    private var player: AVPlayer {
        return AVPlayer(url: videoURL!)
    }

    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let control = AVPlayerViewController()
        control.modalPresentationStyle = .fullScreen
        control.player = player
        control.player?.play()
        return control
    }

    func updateUIViewController(_ playerController: AVPlayerViewController, context: Context) {}
}


