//
//  SettingsView.swift
//  RecipeAppJeong
//
//  Created by Daniel Jeong on 10/8/23.
//

import SwiftUI

struct SettingsView: View{
    var body: some View{
        NavigationView{
            Text("Settings")
                .navigationTitle("Setttings")
        }
        .navigationViewStyle(.stack)
    }
}

struct SettingsView_Previews: PreviewProvider{
    static var previews: some View{
        SettingsView()
    }
}
