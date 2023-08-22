//
//  Plants.swift
//  ELEOS
//
//  Created by Dana Al Fanek on 22/08/2023.
//

import SwiftUI

struct Plants: View {
    var body: some View {
        VStack {
            NavigationView {
                List{
                        Section{
                            
                            HStack{
                                Image("peace lily icon")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 85,height: 85)
                                
                                Text("Peace Lily")
                                    .bold()
                                    .foregroundColor(Color("font"))
                            }
                            
                        }
                        Section{
                            HStack{
                                Image("monstera icon")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 85,height: 85)
                                
                                Text("Monstera")
                                    .bold()
                                    .foregroundColor(Color("font"))
                            }
                            
                        }
                        Section{
                            HStack{
                                Image("lavender icon")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 85,height: 85)
                                
                                Text("Lavender")
                                    .bold()
                                    .foregroundColor(Color("font"))
                                
        
                                
                            }
                            
                        }
                        Section{
                            HStack{
                                Image("snake plant icon")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 85,height: 85)
                                
                                Text("Snake Plant")
                                    .bold()
                                    .foregroundColor(Color("font"))
                            }
                            
                        }
                        Section{
                            HStack{
                                Image("Prayer plant icon")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:85,height: 85)
                                
                                Text("Prayer Plant")
                                    .bold()
                                    .foregroundColor(Color("font"))
                                
                            }
                            
                        }
                        
                    }
                    .navigationTitle("Plants")
                    .foregroundColor(Color("font"))
                    
                }
                
            }
            
            
        }
        
    }


struct Plants_Previews: PreviewProvider {
    static var previews: some View {
        Plants()
    }
}
