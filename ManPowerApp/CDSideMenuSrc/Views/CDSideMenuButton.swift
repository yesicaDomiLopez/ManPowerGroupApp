//
//  CDSideMenuButton.swift
//  CDSideMenu
//
//  Created by Chris on 3/30/20.
//

import SwiftUI

/// The open/close side menu button, displayed either in the navigationBar or in the view
struct CDSideMenuButton: View {
    
    @Binding var sideMenuOpen: Bool
    let toggleLeftMenu: () -> Void
    
    /// CDSideMenu Configuration
    @EnvironmentObject var configuration: CDSideMenuConfiguration
    
    var body: some View {
        
        VStack {
            HStack(alignment: .top) {
                Button(action: {
                    self.toggleLeftMenu()
                }, label: {
                    Image(systemName: self.sideMenuOpen ? self.configuration.openedMenuButtonSFImage : self.configuration.closedMenuButtonSFImage)
                        .resizable()
                        .frame(width: self.configuration.menuButtonSize, height: self.configuration.menuButtonSize)
                        .foregroundColor(.blue)
                        .rotationEffect(self.sideMenuOpen ? .degrees(-180) : .degrees(0))
                        .animation(.linear)

                })
                
           /* Spacer()
            Button(action: {
                    
               }, label: {
                    Image("man3")
                        .resizable()
                        .frame(width: 60, height: 35)
                        .padding(.trailing, 20)
                Spacer()

                })*/

               
            }
            
            
            Spacer()
        }
    }
   
}

struct CDSideMenuButton_Previews: PreviewProvider {
    
    static func toggle() {
        print("Toggle test")
    }
    static var previews: some View {
        CDSideMenuButton(sideMenuOpen: .constant(false), toggleLeftMenu: CDSideMenuButton_Previews.toggle)
    }
}
