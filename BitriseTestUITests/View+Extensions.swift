//
//  View+Extensions.swift
//  BitriseTest
//
//  Created by Vikas Shah on 2/13/23.
//

import Foundation
import SwiftUI

extension SwiftUI.View {
    func toVC() -> UIViewController {
        let vc = UIHostingController(rootView: self)
        vc.view.frame = UIScreen.main.bounds
        return vc
    }
}
