//
//  RoomRow.swift
//  NewRoomFinderApp
//
//  Created by Mark Suster on 12/2/22.
//

import SwiftUI

struct RoomRow: View {
    var xrdsroom: Room
    var body: some View {
        
        HStack {
            ZStack{
                           Image("Noimage")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .opacity(0.2)
                           
                
                                
                                
                if xrdsroom.imageName != "TBD" {
                    AsyncImage(url: URL(string:
                      "https://raw.githubusercontent.com/pauleway/Crossroads-Room-Finder-Data/main/images/\(xrdsroom.imageName)\(xrdsroom.imageExtension)"))
                    {image in
                        image
                            .resizable()
                            .frame(width: 50, height: 50)
                        
                        
                    } placeholder: {
                        ProgressView()
                    }
                }
         
            }
            Text(xrdsroom.room)
                .padding(.leading)

            Spacer()
        }
    }
}
//
//struct RoomRow_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            RoomRow(xrdsroom: rooms[0])
//            RoomRow(xrdsroom: rooms[1])
//        }
//        .previewLayout(.fixed(width: 300, height: 70))
//    }
//}
