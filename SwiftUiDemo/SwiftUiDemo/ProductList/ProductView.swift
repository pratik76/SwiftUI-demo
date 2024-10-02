//
//  ProductView.swift
//  SwiftUiDemo
//
//  Created by Pratik Choudhary on 02/10/24.
//

import SwiftUI

struct ProductView: View {

    @ObservedObject var viewModel = ProductViewModel()

    var body: some View {
        NavigationStack {
            ZStack {
                List {
                    ForEach(Array(viewModel.products.enumerated()), id: \.element.uid) { index, product in
                        NavigationLink {
                            ProductDetailView(products: viewModel.products, index: index)
                        } label: {
                            ProductRowView(product: product)
                        }
                    }
                }
                .listStyle(.plain)
                .navigationTitle("Products")
                if viewModel.isLoading {
                    LoaderView()
                }
            }
        }
        .task {
            await viewModel.fetchProducts()
        }
    }
}

#Preview {
    ProductView()
}
