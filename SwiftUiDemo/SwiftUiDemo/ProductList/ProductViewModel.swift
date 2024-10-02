//
//  ProductViewModel.swift
//  SwiftUiDemo
//
//  Created by Pratik Choudhary on 02/10/24.
//

import Foundation
@MainActor
final class ProductViewModel: ObservableObject {

    @Published var ProductModel : ProductModel?
    @Published var products: [Results] = []
    @Published var isLoading = false
    private let manager = APIManager()

    func fetchProducts() async {
        isLoading = true
        do {
            ProductModel = try await manager.request(url: "https://ey3f2y0nre.execute-api.us-east-1.amazonaws.com/default/dynamodb-writer")
            products = ProductModel?.results ?? []
            self.isLoading = false
        }catch {
            print("Fetch Product error:", error)
            self.isLoading = false
        }
    }
}
