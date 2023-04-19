//
//  ContentView.swift
//  kodewithklossy3
//
//  Created by Barber, Kathryn Rose on 4/15/23.
//

import SwiftUI

struct ContentView: View {
    @State private var firstname = ""
    @State private var lastname = ""
    @State private var titleText = "Type your name into the text boxes"
    @State private var presentAlert = false
    
    var body: some View {
        VStack(spacing: 100){
            
            
            //alert
            Text(presentAlert ? "Presenting": "Dismissed")
            
            //first name
            Text(titleText)
                .font(.title)
            TextField("Type your first name...", text: $firstname)
                .font(.title)
                .multilineTextAlignment(.center)
                .border(Color.gray, width:1)
            
            Button("Submit First Name") {
                titleText = "Hello, \(firstname)"
                
            }
            .buttonStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Button Style@*/DefaultButtonStyle()/*@END_MENU_TOKEN@*/)
            
            //last name
            TextField("Type your last name...", text: $lastname)
                .font(.title)
                .multilineTextAlignment(.center)
                .border(Color.gray, width:1)
            
            Button("Submit Last Name") {
                presentAlert = true
                
            }
            .buttonStyle(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Button Style@*/DefaultButtonStyle()/*@END_MENU_TOKEN@*/)
            

        }
        .padding()
        //alert
        /*
        .alert("Your new username is \(firstname)\(lastname)", isPresented: $presentAlert, actions: {})
 */
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
