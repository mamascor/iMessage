//
//  titleRow.swift
//  ChatApp
//
//  Created by Marco Mascorro on 1/18/22.
//

import SwiftUI

struct titleRow: View {
    var imageUrl = URL(string: "https://images.iphonephotographyschool.com/24769/1120/portrait-photography.jpg")
    var name = "Sarah Smith"
    
    var body: some View {
        HStack(spacing: 20.0){
            
            VStack(alignment: .leading){
                Text(name)
                    .font(.title3).bold()
                
                Text("Online")
                    .font(.caption)
                    .foregroundColor(.gray)
                
            }
            Spacer()
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding(10)
                .cornerRadius(50)
        }
        .padding(.horizontal, 20)
    }
}

struct titleRow_Previews: PreviewProvider {
    static var previews: some View {
        titleRow()
            .background(.ultraThinMaterial)
    }
}
