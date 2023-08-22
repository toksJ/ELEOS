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
                            }
                            
                            Section("Help Center") {
                                
                                NavigationLink(destination: PrivacyView(), label: {
                                    Text("Privacy policy")
                                })
                                
                                NavigationLink(destination: SupportView(), label: {
                                    Text("Support")
                                })
                            }
                            
                            Section("About eleos"){
                                
                                
                                NavigationLink(destination: QuestionsView(), label: {
                                    Text("Questions")
                                })
                                NavigationLink(destination: ToDoListView(), label: {
                                    Text("To-Do List")
                                })
                                NavigationLink(destination: DropsView(), label: {
                                    Text("Drops")
                                })
                                NavigationLink(destination: PlantsView(), label: {
                                    Text("Plants")
                                })
                            }
                            
                                Section("More"){
                                    NavigationLink(destination: CreatorsView(), label: {
                                        Text("About us")
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
                Section("Support") {
                    NavigationLink(destination: SupportView(), label: {
                        Text("Contact us!")
                        Image(systemName: "envelope").offset(x: 175)
                        
                        
                    })        }
            }
            
        }
    }
}



struct QuestionsView: View {
    var body: some View {
        Form {
            Section("Questions") {
                
                    Text("The questions only show up when ur a new member of the app! We evaluated ur self tolerance level based on ur answers to the questions that you wer asked.")
                    
                    
                     }
            .multilineTextAlignment(.leading)

        }
        
    }
}
struct ToDoListView: View {
    var body: some View {
        Form {
            Section("To-Do List") {
                
                    Text("The to do lists purpose is to help u organize ur schedule and chores a bit better by allowing u to add descriptions, priorities ur to dos, and add dead lines.")
                    
                  }
            .multilineTextAlignment(.leading)

        }
        
    }
}
struct DropsView: View {
    var body: some View {
        Form {
            Section("Drops") {
               
                    Text("Drops are a form of reward points u receive each time u cross of a certain amount of ur to dos. Drops will help u unlock certain plants and allow u to make these plants grow.")
                    
                  }
            .multilineTextAlignment(.leading)

        }
        
    }
}
struct PlantsView: View {
    var body: some View {
        Form {
            Section("Plants") {
                
                Text("The plants can be unlocked and grown by the drops u earn when completing tasks. They aim to improve ur responsibility level by keeping them alive! ")
                
            }
            .multilineTextAlignment(.leading)
        }
        
    }
}
struct CreatorsView: View {
    var body: some View {
        Form {
            Section("About us") {
                
                Text("Hi! We are the creators of this app.     Our sole purpose is to help our app users develop personal skills,                        such as: self tolerance, discipline, self developement, responsibility, etc.        We put all our hard work on this application and we tried our best to  make it as perfect as possible.              We hope you like it!!                 Remember: Personal development is a journey, not a destination! :) ")
                
            }
            .multilineTextAlignment(.leading)
        }
        
    }
}








struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
