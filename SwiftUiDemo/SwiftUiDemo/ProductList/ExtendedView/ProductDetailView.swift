//
//  ProductDetailView.swift
//  SwiftUiDemo
//
//  Created by Pratik Choudhary on 02/10/24.
//

import SwiftUI
struct ProductDetailView: View {

    var products: [Results] = []
    @State var index: Int

    var body: some View {
        VStack(spacing: 16) {

            HStack {
                AsyncImageView(imageURL: products[index].image_urls?[0])
                    .scaledToFit()
                    .frame(height: 300)
            }


            Text(products[index].name ?? "")
                .font(.headline)
                .padding(.top)
            Spacer()

            HStack {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Total Price")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    Text(products[index].price ?? "")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundStyle(.indigo)
                }
                .padding(.leading)

                Spacer()

                HStack(spacing: 0) {

                    Text("Buy Now")
                        .font(.headline)
                        .fontWeight(.bold)
                        .frame(width: 100, height: 50)
                        .background(Color(UIColor.darkGray))
                }
                .cornerRadius(15)
                .foregroundColor(.white)
                .padding(.horizontal)
                .padding(.trailing)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 100)
            .background(.gray.opacity(0.2))
            .clipShape(.buttonBorder)
        }
        .padding()
    }

}

//#Preview {
  // ProductDetailView(index: 0)
//}
