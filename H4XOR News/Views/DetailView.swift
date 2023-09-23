//
//  DetailView.swift
//  H4XOR News
//
//  Created by Ilyas Tyumenev on 23.09.2023.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}
