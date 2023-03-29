//
//  LoadingView.swift
//  Test003
//
//  Created by GYURI PARK on 2023/03/29.
//

import SwiftUI

struct LoadingView: View {
    
    let rotationTime: Double = 0.5
    let fullRotation: Angle = .degrees(360)
    static let initialDegree: Angle = .degrees(270)
    
    @State var spinnerStart:CGFloat = 0.0
    @State var spinnerEndS1: CGFloat = 0.03
    @State var rotationDegreeS1 = initialDegree
    
    let animationTime: Double = 1.9

    var body: some View {
        ZStack {
            LoadingViewCircle(start: spinnerStart, end: spinnerEndS1, rotation: rotationDegreeS1, color: Color(0x24E7B0))
        }.frame(width: 60, height: 60)
            .onAppear() {
                Timer.scheduledTimer(withTimeInterval: animationTime, repeats: true) {
                    (mainTimer) in self.animateSpinner(with: rotationTime) { self.spinnerEndS1 = 1.0 }
                }
            }
    }
    
    func animateSpinner(with timeInterval: Double, completion: @escaping (() -> Void)) {
            Timer.scheduledTimer(withTimeInterval: timeInterval, repeats: false) { _ in
                withAnimation(Animation.easeInOut(duration: rotationTime)) {
                    completion()
                }
            }
        }
}

struct LoadingViewCircle: View {
    var start: CGFloat
    var end: CGFloat
    var rotation: Angle
    var color: Color
    
    
    var body: some View {
        Circle()
            .trim(from: start, to: end)
            .stroke(style: StrokeStyle(lineWidth: 15, lineCap: .round))
            .fill(color)
            .rotationEffect(rotation)
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
