//
//  ContentView.swift
//  FakeAPI
//
//  Created by user on 04/06/2023.
//

import SwiftUI
import Foundation

 class Newvalues : ObservableObject {
    @Published var postUserId : String = ""
    @Published var postTitle : String = ""
    @Published var postBody : String = ""
    
}

struct ContentView: View {
    
@StateObject var values = Newvalues()

    var body: some View {
        VStack {
            Image(systemName: "person.badge.plus")
                //.imageScale(ControlSize)
                .foregroundColor(.accentColor)
                .font(.system(size: 50))
            
            Text("Add new employee")
                .font(.largeTitle)
                .padding(.all)
                .foregroundColor(.blue)
            
            Text("Employee ID:")
                .font(.title2)
            TextField("", text: $values.postUserId)
                .font(.body)
                .frame(width:200,height:20)
                .padding(.all)
                .border(Color(UIColor.separator))
                .background(Color.gray.opacity(0.20))
            
            Text("Employee  Name:")
                .font(.title2)
            TextField("", text: $values.postTitle)
                .font(.body)
                .frame(width:200,height:20)
                .padding(.all)
                .border(Color(UIColor.separator))
                .background(Color.gray.opacity(0.20))
            
            Text("Employee Job:")
                .font(.title2)
            TextField("", text: $values.postBody)
                .font(.body)
                .frame(width:200,height:20)
                .padding(.all)
                .border(Color(UIColor.separator))
                .background(Color.gray.opacity(0.20))
            
            Button("SAVE"){
                makePOSTRequest()
            }
            .frame(width:50,height:15)
            .padding(.all)
            .border(Color(UIColor.separator))
            .background(Color.blue.opacity(0.40))
            .foregroundColor(.black)
            .padding(.all)
            
        }
        
        .padding(.all)
        .environmentObject(values)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Newvalues())
    }
}

//@EnvironmentObject var values :  Newvalues
