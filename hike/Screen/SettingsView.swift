//
//  SettingsView.swift
//  hike
//
//  Created by Monir Haider Helalee on 17/4/24.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - PROPERTIES
    
    private let alternativeAppIcons: [String] = [
        "AppIcon-MagnifyingGlass",
        "AppIcon-Map",
        "AppIcon-Mushroom",
        "AppIcon-Camera",
        "AppIcon-Backpack",
        "AppIcon-Campfire"
    ]
    
    var body: some View {
        List{
            // MARK: - SECTION: HEADER
            Section{
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80,weight: .black))
                    
                    VStack (spacing: -10){
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80,weight: .black))
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .customGreenLight,
                            .customGreenMedium,
                            .customGreenDark
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .padding(.top, 8)
                
                VStack(spacing:8) {
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                    .fontWeight(.heavy)
                    
                    Text("The hike, which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday.\nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    Text("Dust off the boots!. It's time for a walk.")
                    .fontWeight(.heavy)
                    .foregroundColor(.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)

            } //: HEADER
            .listRowSeparator(.hidden)
            // MARK: - SECTION: ICONS
            Section(header: Text("Alternate Icons")){
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(spacing:12) {
                        ForEach(alternativeAppIcons.indices,id: \.self) { item in
                            Button{
                                print("Tap \(alternativeAppIcons[item])")
                                UIApplication.shared.setAlternateIconName((alternativeAppIcons[item])){
                                    error in
                                    if error != nil {
                                        print("Failed request to update the app's icon: \(String(describing: error?.localizedDescription))")
                                    } else {
                                        print("Success! You have changed the app's icon to \(alternativeAppIcons[item])")
                                    }
                                }
                            } label: {
                                Image("\(alternativeAppIcons[item])-Preview")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80,height: 80)
                                    .cornerRadius(16)
                        }
                        }
                    }
                }
                .padding(.top,12)
                
                Text("Choose your favourite app icon from the collection above.")
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,maxWidth: .infinity)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .font(.footnote)
                .padding(.bottom,12)
            }//:Section
            .listRowSeparator(.hidden)
            // MARK: - SECTION: ABOUT
            
            Section (
                header: Text("ABOU THE APP"),
                footer: HStack{
                    Spacer()
                    Text("Copy © All right reserved.")
                    Spacer()
                }
                    .padding(.vertical, 8)
            ){
                CustomListRowView(
                    rowLabel: "Application",
                    rowIcon: "apps.iphone",
                    rowContent: "Hike",
                    rowTinColor: .blue
                )
                CustomListRowView(
                    rowLabel: "Compatibility",
                    rowIcon: "info.circle",
                    rowContent: "iOS, iPadOS",
                    rowTinColor: .red
                )
                CustomListRowView(
                    rowLabel: "Technology",
                    rowIcon: "swift",
                    rowContent: "Swift",
                    rowTinColor: .orange
                )
                CustomListRowView(
                    rowLabel: "Version",
                    rowIcon: "gear",
                    rowContent: "1.0",
                    rowTinColor: .purple
                )
                CustomListRowView(
                    rowLabel: "Developer",
                    rowIcon: "ellipsis.curlybraces",
                    rowContent: "Monir Haider",
                    rowTinColor: .mint
                )
                CustomListRowView(
                    rowLabel: "Designer",
                    rowIcon: "paintpalette",
                    rowContent: "Robert Petras",
                    rowTinColor: .pink
                )
                CustomListRowView(
                    rowLabel: "Website",
                    rowIcon: "globe",
                    rowTinColor: .indigo,
                    rowLinkLabel: "My Portfolio",
                    rowLinkDestination: "https://monirdev.com"
                )
            }

        }//: LIST
        
    }
}

#Preview {
    SettingsView()
}
