//
//  ContentView.swift
//  Domane
//
//  Created by Andrew Suster on 1/18/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var domaneData: [Domain]?
    @State var totaltotal: Domanes?
    @State var zerozero: String = ""
    @State var enteredtext: String = ""
    @State var userInput: String = ""
   
    
    var body: some View {
        NavigationView {
            ScrollView {
                
                VStack {
                    Text("")
                        .font(.largeTitle)
                    Text("")
                        .font(.largeTitle)
                    Text("")
                        .font(.largeTitle)
                    Text("")
                        .font(.largeTitle)
                    Text("")
                        .font(.largeTitle)
                    Text("")
                        .font(.largeTitle)
                    Text("")
                        .font(.largeTitle)
                    Text("")
                        .font(.largeTitle)
                    

                    VStack {
                     
                            Text("Domane.")
                                .font(.largeTitle)
                                .fontWeight(.semibold)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.17))
                            .offset(y: 20)
                            
                       
                  
                        ZStack{
                            VStack {
                                TextField("Search Domain", text: $userInput)
                                    .padding()
                                    .background (Color (red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)) .cornerRadius (15)
                                   
                                    .padding()
                                
                                
                                Button("Search") {
                                    
                                    loadDomanes(enteredtext: userInput, completion: {(domaneData) in
                                        self.domaneData = domaneData
                                    })
                                    
                                }
                            }
                            
                            Image(systemName: "magnifyingglass")
                                .font(.system(size: 22))
                                
                                .offset(x:146, y:-14)
                              
                              //  .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 1.0)/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.739))
                               
                             
                            
                        }
                        
//
//                        if let totaltotal = totaltotal{
//
//                            if totaltotal.time == "None"{
//
//                                VStack{
//                                    Text("nothing is here")
//                                }
//                            }
//
//                            }

                        }
                        
                        VStack{
                           
                            
                          
                           
                            
                                if let domaneData = domaneData{
                                    
                                   
                                    
                                    
                                    
                                    VStack{
                                  
                                        NavigationView{
                                            //                            VStack{
                                            
                                            
                                            List (domaneData, id: \.self) {
                                                
                                                
                                                domane in
                                                
                                        
                                                Text(domane.domain)
                            
                            
                                            }
                                            //                                }
                                            .navigationTitle("Registered Domains:")
                                            
                                            
                                            
                                        }
                                        
                                    }
                                    //     .offset(y:50)
                                } else {
                                    
                                    Text("text")
                                        .font(.largeTitle)
                                        .foregroundColor(Color.white)
                                    Text("text")
                                        .font(.largeTitle)
                                        .foregroundColor(Color.white)
                                    Text("text")
                                        .font(.largeTitle)
                                        .foregroundColor(Color.white)
                                    
                                    Text("text")
                                        .font(.largeTitle)
                                        .foregroundColor(Color.white)
                                    Text("text")
                                        .font(.largeTitle)
                                        .foregroundColor(Color.white)
                                    Text("text")
                                        .font(.largeTitle)
                                        .foregroundColor(Color.white)
                                    Text("text")
                                        .font(.largeTitle)
                                        .foregroundColor(Color.white)
                                    Text("text")
                                        .font(.title)
                                        .foregroundColor(Color.white)
                                    
                                    
                                    
                                    
                                    
                                }
                            
                        
                        // .offset(y: -75)
                        
                            Text(" ")
                                .font(.title)
                                
                        VStack {
                            NavigationLink(destination:stuckl()){
                                Text("Stuck?")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                
                                
                                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.58, saturation: 1.0, brightness: 0.881)/*@END_MENU_TOKEN@*/)
                            }
                        }
                        //   .offset(y:290)
                            
                              
                            Text(" ")
                                .font(.largeTitle)
                        
                            
                    }
                            .offset(y:50)
                    }
                    
                    
                }
                .padding(.top, 46.0)
                //.offset(y:194)
            }
            
        }
        
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
