//
//  LottieView.swift
//  Magic Tracking
//
//  Created by Gerardo Naranjo on 20/08/22.
//

import Lottie
import SwiftUI

@available(iOS 13.0, *)
public struct LottieView: UIViewRepresentable {
    /// All the necesary configuration to play the Lottie. Contains file name, speed, loop mode, start and end progress, background behavior, and completion.
    public var lottieData: LottieData
    /// The main view, where the animationView is going to be displayed.
    fileprivate let view: UIView = UIView(frame: .zero)
    /// The view where the Lottie animation is going to be displayed.
    fileprivate let animatedView: AnimationView = AnimationView()

    /// Init method to create the view.
    /// - Parameter lottieData: All the necesary configuration to play the Lottie.
    public init(lottieData: LottieData) {
        self.lottieData = lottieData
    }

    /// Attach the animatedView (Lottie animation) into the main view.
    fileprivate func createAnimatedView() {
        view.addSubview(animatedView)
        NSLayoutConstraint.activate([
            animatedView.widthAnchor.constraint(equalTo: view.widthAnchor),
            animatedView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
    }

    /// Setup the animatedView and play it.
    fileprivate func setupAnimatedView() {
        animatedView.animation = Animation.named(lottieData.fileName)
        animatedView.translatesAutoresizingMaskIntoConstraints = false
        animatedView.contentMode = .scaleAspectFit
        animatedView.animationSpeed = lottieData.speed
        animatedView.backgroundBehavior = lottieData.backgroundBehavior
        animatedView.play(fromProgress: lottieData.startProgress, toProgress: lottieData.endProgress, loopMode: lottieData.loop, completion: lottieData.completion)
    }

    /// Creates the view object and configures its initial state.
    /// - Parameter context: A context structure containing information about the current state of the system.
    /// - Returns: Your UIKit view configured with the provided information.
    public func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        createAnimatedView()
        setupAnimatedView()
        return view
    }

    /// Updates the state of the specified view with new information from SwiftUI.
    /// - Parameters:
    ///   - uiView: Your custom view object.
    ///   - context: A context structure containing information about the current state of the system.
    public func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<LottieView>) {
        setupAnimatedView()
    }
}
