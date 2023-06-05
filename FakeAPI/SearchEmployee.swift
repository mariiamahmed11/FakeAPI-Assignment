//
//  SearchEmployee.swift
//  FakeAPI
//
//  Created by user on 04/06/2023.
//

import SwiftUI

struct SearchEmployee: View {
    @State private var employee = [Employee]()
    
    var body: some View {
        VStack {
            Image(systemName: "folder.fill.badge.person.crop")
                //.imageScale(ControlSize)
                .foregroundColor(.accentColor)
                .font(.system(size: 50))
            
            Text("Search employee")
                .font(.largeTitle)
                .padding(.all)
                .foregroundColor(.blue)
            
            Text("Employee ID:")
                .font(.title2)
           // TextField("", text:$employee.description)
                .font(.body)
                .frame(width:200,height:20)
                .padding(.all)
                .border(Color(UIColor.separator))
                .background(Color.gray.opacity(0.20))
                .cornerRadius(10)
               
            
            Button("Search"){
                makePOSTRequest()
            }
            .frame(width:80,height:15)
            .padding(.all)
            .border(Color(UIColor.separator))
            .background(Color.blue.opacity(0.40))
            .foregroundColor(.black)
            .padding(.all)
            
            Text("Employee  Name:")
                .font(.title2)
            Text("")
                .font(.body)
                .frame(width:200,height:20)
                .padding(.all)
                .border(Color(UIColor.separator))
                .background(Color.gray.opacity(0.20))
            
            Text("Employee Job:")
                .font(.title2)
           // Text(CIFilter())
                .font(.body)
                .frame(width:200,height:20)
                .padding(.all)
                .border(Color(UIColor.separator))
                .background(Color.gray.opacity(0.20))
            
            Button("delete this employee"){
                makePOSTRequest()
            }
            .frame(width:190,height:15)
            .padding(.all)
            .border(Color(UIColor.separator))
            .background(Color.blue.opacity(0.40))
            .foregroundColor(.black)
            .padding(.all)
    
        }
        .padding(.all)
    }
}

struct SearchEmployee_Previews: PreviewProvider {
    static var previews: some View {
        SearchEmployee()
    }
}
