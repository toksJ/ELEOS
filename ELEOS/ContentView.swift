//
//  ContentView.swift
//  ELEOS
//
//  Created by TokaJaber on 21/08/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
                    TabView {
                        Home()
                            .tabItem {
                                Image(systemName: "house.fill")
                                Text("Home")
                            }
                    
                       
                        Plants()
                            .tabItem {
                                Image(systemName: "leaf.fill")
                                Text("Plants")
                            }
                        Schedule()
                            .tabItem {
                                Image(systemName: "calendar.badge.clock")
                                Text("Schedule")
                            }
                        
                        Todo()
                            .tabItem {
                                Image(systemName: "list.bullet.clipboard")
                                Text("To-do")
                            }
                    }
            
                        }
                
                
            }
            

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
