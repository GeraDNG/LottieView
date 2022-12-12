//
//  LottieData.swift
//  Magic Tracking
//
//  Created by Gerardo Naranjo on 26/08/22.
//

import Lottie
import CoreGraphics

/// This struct contains all the necessary configuration to play a Lottie file, with `LottieView`.
public struct LottieData {
    /// Name of the file (Lottie animation).
    public var fileName: String
    /// Speed of the animation.
    public var speed: CGFloat
    /// Defines animation loop behavior.
    public var loop: LottieLoopMode
    /// The start progress of the animation.
    public var startProgress: CGFloat
    /// The end progress of the animation.
    public var endProgress: CGFloat
    /// Describes the behavior of an AnimationView when the app is moved to the background.
    public var backgroundBehavior: LottieBackgroundBehavior
    /// An optional completion closure to be called when the animation stops.
    public var completion: LottieCompletionBlock?

    /// Init method to create the struct.
    /// - Parameters:
    ///   - fileName: Name of the file (Lottie animation).
    ///   - speed: Speed of the animation. Default = `1.0`.
    ///   - loop: Defines animation loop behavior. Default = `.loop`.
    ///   - startProgress: The start progress of the animation. Default = `0.0`.
    ///   - endProgress: The end progress of the animation. Default = `1.0`.
    ///   - backgroundBehavior: Describes the behavior of an AnimationView when the app is moved to the background. Default = `.pauseAndRestore`
    ///   - completion: An optional completion closure to be called when the animation stops. Default = `nil`.
    public init(fileName: String, speed: CGFloat = 1.0, loop: LottieLoopMode = .loop, startProgress: CGFloat = .zero, endProgress: CGFloat = 1.0, backgroundBehavior: LottieBackgroundBehavior = .pauseAndRestore, completion: LottieCompletionBlock? = nil) {
        self.fileName = fileName
        self.speed = speed
        self.loop = loop
        self.startProgress = startProgress
        self.endProgress = endProgress
        self.backgroundBehavior = backgroundBehavior
        self.completion = completion
    }
}
