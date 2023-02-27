//
//  RoomList.swift
//  NewRoomFinderApp
//
//  Created by Mark Suster on 12/2/22.
//

import SwiftUI

struct RoomList: View {
    @State var rooms:[Room]?
    
    @State var allRooms:[Room]?
    @State var selectedBuilding = " All Buildings"
    
    @State var buildings = [" All Buildings",
                        "Science Building",
                       "Arts Building",
                        "Pac Air"]
    
    
    
    var body: some View {
        if let rooms = rooms{
            
            NavigationView {
                
                
                ZStack{
                    
                    
                    
                    
                    List(rooms) { xrdsroom in
                        NavigationLink {
                            RoomDetail(xrdsroom: xrdsroom)
                        } label: {
                            RoomRow(xrdsroom: xrdsroom)
                        }
                    }
                    .navigationTitle("XRDS Rooms")
                    .toolbar {
                        
                        
                        
                        Picker("Buildings",
                               selection: $selectedBuilding ){
                            ForEach(buildings, id: \.self) { building in
                                Text(building)
                            }
                        } .onChange(of: selectedBuilding) { _ in
                            if selectedBuilding == " All Buildings"{
                                self.rooms = allRooms
                            }
                            else{
                                self.rooms = allRooms!.filter{ xrdsroom in
                                    return xrdsroom.building == selectedBuilding
                                }
                            }
                        
                    }
                    
                  //  VStack{
//                        Picker("Buildings",
//                               selection: $selectedBuilding ){
//                            ForEach(buildings, id: \.self) { building in
//                                Text(building)
//                            }
//                        } .onChange(of: selectedBuilding) { _ in
//                            if selectedBuilding == " All Buildings"{
//                                self.rooms = allRooms
//                            }
//                            else{
//                                self.rooms = allRooms!.filter{ xrdsroom in
//                                    return xrdsroom.building == selectedBuilding
//                                }
//                            }
//                        }
                   // }
                    // .padding(.bottom, 750)
                  //  .offset(y:-330)
                 //   .padding(.bottom, 10)
                 //   .padding(.leading, 210)
                }
            }
        }
        } else {
            Text("Loading Rooms . . .")
                .onAppear(){
                    loadData(
                        urlString:
                                "https://raw.githubusercontent.com/pauleway/Crossroads-Room-Finder-Data/main/roomData.json",
                             completion: {
                        roomData in
                                 
                        self.allRooms = roomData
                        self.rooms = roomData
                                 
                                 roomData.forEach{ room in
                                     if !buildings.contains(room.building){
                                         buildings.append(room.building)
                                     }
                                 }
                                 buildings.sort()
                    })
                }
        }
    }
}

struct RoomList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
            RoomList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
