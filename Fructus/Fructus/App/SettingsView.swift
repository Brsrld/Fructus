//
//  SettingsView.swift
//  Fructus
//
//  Created by Baris Saraldi on 17.08.2021.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat,sodium and calories. None have colesterol.Fruits are sources of many essantial nutriens, including potassium,dietary fiber, vitamins and much more.")
                                .font(.footnote)
                        }
                    }
                }
                
                
                GroupBox(
                    label: SettingsLabelView(labelText: "Customization", labelImage: "apps.iphone")) {
                    Divider().padding(.vertical, 4)
                    
                    Text("If you wish, you can restart the application by toggle te switch in this box.That way it starts the onboarding process and you will see the welcome screen again")
                        .padding(.vertical, 8)
                        .frame(minHeight: 60)
                        .layoutPriority(1)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    Toggle(isOn: $isOnboarding) {
                        if isOnboarding {
                            Text("Restarted".uppercased())
                                .fontWeight(.bold)
                                .foregroundColor(Color.green)
                        } else {
                            Text("Restart".uppercased())
                                .fontWeight(.bold)
                                .foregroundColor(Color.secondary)
                        }
                    }
                    .padding()
                    .background(Color(UIColor.tertiarySystemBackground).clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
                }
                
                GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                ){
                    Divider().padding(.vertical, 4)
                    SettingsRowView(name: "Developer", content: "Brsrld")
                    SettingsRowView(name: "Designer", content: "Celal TOK")
                    SettingsRowView(name: "Compability", content: "iOS 14")
                    SettingsRowView(name: "Website", linkLabel: "Company", linkDestination: "appcent.mobi")
                    SettingsRowView(name: "Twitter", linkLabel: "@brsrld", linkDestination: "twitter.com/brsrld")
                    
                    
                }
                
                
                .navigationBarTitle(Text("Settings"),displayMode: .large)
                .navigationBarItems(
                    leading:
                        Button(action:  {
                            presentationMode.wrappedValue.dismiss()
                            
                        }) {
                            Image(systemName: "xmark")
                        })
                .padding()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
