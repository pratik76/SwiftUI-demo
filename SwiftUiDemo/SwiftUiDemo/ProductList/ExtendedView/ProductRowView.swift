//
//  ProductRowView.swift
//  SwiftUiDemo
//
//  Created by Pratik Choudhary on 02/10/24.
//

import SwiftUI

struct ProductRowView: View {

    let product: Results

    var body: some View {
        HStack(spacing: 8) {
            if let url = URL(string: product.image_urls?[0] ?? "") {
                productImage(url: url)
            }

            VStack(alignment: .leading, spacing: 8) {
                // Title
                Text(product.name ?? "")
                    .font(.headline)
                    .lineLimit(2)

                HStack {
                    Text(product.price ?? "0.0")
                    .font(.title3)
                    .foregroundStyle(.indigo)

                    Spacer()

                    buyButton
                }
            }
        }
        .padding()
        

    }

    func productImage(url: URL) -> some View {
        AsyncImage(url: url) { image in
            image.resizable()
                .scaledToFit()
        } placeholder: {
            ProgressView()
        }
        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
    }

    var buyButton: some View {
        Button(action: {}, label: {
            Text("Buy")
                .foregroundStyle(.white)
                .padding(.horizontal)
                .padding(.vertical, 8)
                .background(.orange)
                .clipShape(.capsule)
        })
    }
}

#Preview {
    ProductView()
}

