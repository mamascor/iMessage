//
//  ContentView.swift
//  ChatApp
//
//  Created by Marco Mascorro on 1/18/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            NavigationLink(destination: ChatView()) {
               ScrollView{
                    HStack {
                        HStack{
                            Text("SS")
                                .foregroundColor(.white)
                                .font(.title3)
                                .padding()
                                .background(Color("DarkGray"))
                                .cornerRadius(50)
                        }
                        VStack(alignment: .leading){
                        Divider()
                            HStack{
                                Text("Sarah Smith")
                                    .foregroundColor(.black)
                                    .font(.callout).bold()
                                
                            Spacer()
                                Text("10:56")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                                Image(systemName: "chevron.right")
                                    .resizable()
                                    .foregroundColor(.gray)
                                    .frame(width: 6, height: 9)
                                    .padding(.horizontal, 5)
                            }
                            
                            
                            Text("Hello How are you doing today?")
                                .foregroundColor(.gray)
                                .font(.caption)
                        Divider()
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("Messages")
            .toolbar {
                    Image(systemName: "square.and.pencil")
                              .foregroundColor(.blue)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
