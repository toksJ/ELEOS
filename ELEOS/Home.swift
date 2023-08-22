//
//  Home.swift
//  ELEOS
//
//  Created by Dana Al Fanek on 22/08/2023.
//

import SwiftUI

struct Home: View {
   
            @State var buttonSheet = false
            @State var AccountSheet = false
            
            
            var body: some View {
                ZStack{
                    Button {
                        buttonSheet.toggle()
                    } label: {
                        Image(systemName: "gearshape")
                            .font(.title)
                            .font(.body.bold())
                            .foregroundColor(.black)
                            .padding(20)
                            .frame(maxWidth: . infinity, maxHeight: .infinity, alignment: .topTrailing)
                            .padding(20)
                            .offset(x: 10)
                        
                            .sheet(isPresented: $buttonSheet) {
                                BottomSheetView()
                                    .presentationDetents([.height(730)])
                            }
                        
                    }
                    
                    Button {
                        AccountSheet.toggle()
                    } label: {
                        Image(systemName: "person.crop.circle")
                            .font(.title)
                            .font(.body.bold())
                            .foregroundColor(.black)
                            .padding(20)
                            .frame(width: 280, height: 730, alignment: .topTrailing)
                            .padding(20)
                            .offset(x:-10)
                            .sheet(isPresented: $AccountSheet) {
                                AccountSheetView()
                                    .presentationDetents([.height(730)])
                            }
                        
                    }
                    
                }
            }
            
            struct BottomSheetView: View {
                @State private var wakeUp = Date.now
                
                
                var body: some View {
                    NavigationView {
                        ZStack {
                            VStack {
                                Text("Settings")
                                    .bold()
                                    .padding(15)
                                    .accentColor(.black)
                                    .dynamicTypeSize(.xLarge)
                                
                                Form {
                                    
                                    
                                    Section("General") {
                                        NavigationLink(destination: NotificationView(), label: {
                                            Text("Notification")
                                            
                                            
                                        })
                                        
                                        NavigationLink(destination: ApperanceView(), label: {
                                            Text("Apperance")
                                        })
                                        
                                        NavigationLink(destination: PrivacyView(), label: {
                                            Text("Privacy policy")
                                        })
                                        
                                        NavigationLink(destination: SupportView(), label: {
                                            Text("Support")
                                        })
                                        
                                        NavigationLink(destination: HelpView(), label: {
                                            Text("questions")
                                        })
                                        NavigationLink(destination: HelpView(), label: {
                                            Text("plants")
                                        })
                                      
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                    }
                                    
                                    
                                }
                                
                            }
                        }
                        
                    }
                }
                
            }
            struct NotificationView: View {
                @State private var isToggled = false
                
                var body: some View {
                    Form {
                        
                        Toggle("Mute ", isOn: $isToggled)
                        
                        if isToggled {
                            Text("Muted")
                                .font(.system(size: 12, weight: .light, design: .default))
                        }
                    }
                    
                }
                
                
                
                
                
                
                
            }
            
            
            
            
            
            struct AccountSheetView: View {
                var body: some View {
                    Text("Account")
                        .bold()
                        .padding(15)
                        .accentColor(.black)
                        .dynamicTypeSize(.xLarge)
                    Form {
                        
                        Image(systemName: "person.crop.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                        //                    .scale(1.0)
                        //                    .size(width: 40, height: 40)
                        Text("okay")
                        //
                        
                    }
                    
                }
            }
            struct ApperanceView: View {
                @State private var FontSize = 0
                @State private var iconSize = 0.0
                
                
                var body: some View {
                    Form {
                        
                        Stepper(value: $FontSize, in: 0...10) {
                            Text("Font size: \(FontSize)")
                        }
                        Text("the current icon size is ^[\(Int(iconSize)) icons avilable](inflect: true)")
                        Slider(value: $iconSize, in: 0...10)
                        
                    }
                    
                }
                
            }
            
            struct PrivacyView: View {
                
                var body: some View {
                    Form{
                        Text("All user information is private.")
                    }
                }
            }
            
            struct SupportView: View {
                var body: some View {
                    Form {
                        Section("Help Center") {
                            NavigationLink(destination: SupportView(), label: {
                                Text("About Eloes")
                                
                                
                                
                            })        }
                    }
                       
                        }
                    }
                }

        struct HelpView: View {
            var body: some View {
                Form {
                    Section("About eleos") {
                        NavigationLink(destination: HelpView(), label: {
                            Text("questions")
                            
                            
                            
                        })        }
                }
                   
                    }
                }
            

            
            
            
            
            

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
