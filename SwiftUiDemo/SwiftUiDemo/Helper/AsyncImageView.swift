//
//  AsyncImageView.swift
//  SwiftUiDemo
//
//  Created by Pratik Choudhary on 02/10/24.
//
import SwiftUI

struct AsyncImageView: View {

    let imageURL: String?

    var body: some View {
        if let imageURL, let url = URL(string: imageURL) {
            AsyncImage(url: url) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
        }else {
            ProgressView()
        }
    }
}
