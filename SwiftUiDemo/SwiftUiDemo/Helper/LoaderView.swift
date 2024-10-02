//
//  LoaderView.swift
//  SwiftUiDemo
//
//  Created by Pratik Choudhary on 02/10/24.
//


import SwiftUI

struct LoaderView: View {
    var body: some View {
        ProgressView()
            .scaleEffect(2.0, anchor: .center)
            .progressViewStyle(CircularProgressViewStyle(tint: .black))
    }
}

#Preview {
    LoaderView()
}
