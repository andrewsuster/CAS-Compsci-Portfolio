//
//  RoomDetail.swift
//  NewRoomFinderApp
//
//  Created by Mark Suster on 12/2/22.
//

import SwiftUI

struct RoomDetail: View {
    var xrdsroom: Room
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading) {
                
                if xrdsroom.floor != "TBD"{
                    if (xrdsroom.quote != "N/A"){
                        VStack(alignment: .leading) {
                            Text(xrdsroom.room)
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .lineLimit(2)
                            
                            
                            VStack(alignment: .leading) {
                                Text(xrdsroom.building)
                                    .font(.title3)
                                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.35))
                                
                                
                                
                                Text(xrdsroom.floor)
                                    .font(.body)
                                
                                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.35))
                                    .padding(.leading, 1)
                                    .controlSize(/*@START_MENU_TOKEN@*/.regular/*@END_MENU_TOKEN@*/)
                                
                                
                                
                                
                            }
                            .padding(.vertical, -25.0)
                            .padding(.leading, 2)
                            
                        }
                    }
                } else {
                    VStack(alignment: .leading) {
                        Text(xrdsroom.room)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .lineLimit(2)
                        
                        
                        VStack(alignment: .leading) {
                            Text(xrdsroom.building)
                                .font(.title3)
                                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.35))
                            
                        }
                        .padding(.vertical, -25.0)
                        .padding(.leading, 2)
                        
                    }
                    .padding(.bottom, -20.0)
                }
                
                MapView(room: xrdsroom, coordinate: xrdsroom.locationCoordinate)
           
                
                    .padding(.top, 23.0)
                    .ignoresSafeArea(edges: .top)
                
                    .frame(height: 300)
                
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                HStack {
                    ZStack {
                        Image("Noimage")
                        
                            .resizable()
                        
                            .padding(.horizontal, 8.0)
                            .frame(width: 150, height: 150)
                        //                                .offset(y: 10)
                        //                            .offset(x: -0)
                            .opacity(0.2)
                        //                            .overlay(
                        if xrdsroom.imageName != "TBD" {
                        AsyncImage(url: URL(string:
                                                "https://raw.githubusercontent.com/pauleway/Crossroads-Room-Finder-Data/main/images/\(xrdsroom.imageName)\(xrdsroom.imageExtension)"))
                        {image in
                            image
                                .resizable()
                            
                                .padding(.trailing, 4.0)
                                .frame(width: 150, height: 150)
                            
                            
                            
                        } placeholder: {
                            ProgressView()
                        }
                        
                    }
                }
                    
                    
                    // )
                    
                    
                    
                  
                        //
                        
                        
                        
                    ZStack {
                        
//                            RoundedRectangle(cornerRadius: 5)
//                                .padding(.leading, 9.0)
//                                .frame(height: 22.0)
//                                .frame(width: 113.0)
//                                .offset(x:-30, y:40)
//                                .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.011, brightness: 0.944)/*@END_MENU_TOKEN@*/)
//
//
//
//                        RoundedRectangle(cornerRadius: 5)
//                                .padding(.leading, 9.0)
//                                .frame(height: 22.0)
//                                .frame(width: 153.0)
//                                .offset(x:-10, y:0)
//                                .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.011, brightness: 0.944)/*@END_MENU_TOKEN@*/)
//
                    //    ZStack {
//                            ZStack {
//                                RoundedRectangle(cornerRadius: 5)
//                                    .frame(width:200, height: 22.0)
//                                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.011, brightness: 0.944)/*@END_MENU_TOKEN@*/)
//                                    .offset(x: -140, y:27)
//                                RoundedRectangle(cornerRadius: 5)
//                                    .frame(width:200, height: 22.0)
//                                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.011, brightness: 0.944)/*@END_MENU_TOKEN@*/)
//                                    .offset(x: -30, y:27)
//                            }
//                            ZStack {
//                                RoundedRectangle(cornerRadius: 5)
//                                    .frame(width:200, height: 22.0)
//                                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.011, brightness: 0.944)/*@END_MENU_TOKEN@*/)
//                                    .offset(x: -140, y:27)
//                                RoundedRectangle(cornerRadius: 5)
//                                    .frame(width:200, height: 22.0)
//                                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.011, brightness: 0.944)/*@END_MENU_TOKEN@*/)
//                                    .offset(x: -10, y:27)
//                            }
//                            .offset(y:45)
//                            ZStack {
//                                RoundedRectangle(cornerRadius: 5)
//                                    .frame(width:200, height: 22.0)
//                                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.011, brightness: 0.944)/*@END_MENU_TOKEN@*/)
//                                    .offset(x: -140, y:27)
//                                RoundedRectangle(cornerRadius: 5)
//                                    .frame(width:200, height: 22.0)
//                                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.011, brightness: 0.944)/*@END_MENU_TOKEN@*/)
//                                    .offset(x: -30, y:27)
//                            }
//                            .offset(y:90)
//                            ZStack {
//                                RoundedRectangle(cornerRadius: 5)
//                                    .frame(width:200, height: 22.0)
//                                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.011, brightness: 0.944)/*@END_MENU_TOKEN@*/)
//                                    .offset(x: -140, y:27)
//                                RoundedRectangle(cornerRadius: 5)
//                                    .frame(width:200, height: 22.0)
//                                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.011, brightness: 0.944)/*@END_MENU_TOKEN@*/)
//                                    .offset(x: -10, y:27)
//                            }
//                            .offset(y:135)
//                        }
//                        .offset(y:60)
//
                        
                        VStack(alignment: .leading) {
                                
                                
                                
                                
                              
                                    
                                 
                           
//
                              
//                                    .frame(width:100, height:100)
                                Text(xrdsroom.fullName)
                                            .font(.title3)
                                            .fontWeight(.bold)
                                            .multilineTextAlignment(.leading)
                                            .lineLimit(5)
                                        .padding(.bottom, 8.0)
                           
                                
                                //                        if((xrdsroom.date == "TBD")&&(xrdsroom.quote == "TBD")&&(xrdsroom.profession == "TBD")&&(xrdsroom.blurb == "TBD")){
                           
                                
                                
                                
                                if(xrdsroom.date != "TBD"){
                                    if (xrdsroom.quote != "N/A"){
                                  
                                            Text(xrdsroom.date)
                                                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.174))
                                                .padding(.bottom, 1.0)
                                           
                                        }
                                    
                                }
                                if xrdsroom.profession != "TBD"{
                                    if (xrdsroom.quote != "N/A"){
                                        Text(xrdsroom.profession)
                                            .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.174))
                                            .lineLimit(4)
                                    }
                                }
                                
                        }
                    }
                    }
                    
                    if xrdsroom.blurb != "TBD"{
                        if (xrdsroom.quote != "N/A"){
                            Text(xrdsroom.blurb)
                                .padding(.top)
                        }
                    }
                    
                    if (xrdsroom.quote != "N/A"){
                        
                        if xrdsroom.quote != "TBD"{
                            Text(("“")+xrdsroom.quote+("“"))
                                .padding(.top)
                        }
                    }
                
            }
            .padding()
        }
        .navigationTitle(xrdsroom.room)
        .navigationBarTitleDisplayMode(.inline)
    }
}
//
//struct RoomDetail_Previews: PreviewProvider {
//    static var previews: some View {
//        RoomDetail(xrdsroom: rooms[0])
//    }
//}




            
        


//   if((xrdsroom.date == "TBD")&&(xrdsroom.quote == "TBD")&&(xrdsroom.profession == "TBD")&&(xrdsroom.blurb == "TBD")){


