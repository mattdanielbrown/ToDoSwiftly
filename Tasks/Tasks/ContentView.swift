//
//  ContentView.swift
//  Tasks
//
//  Created by Justin Bush on 2021-07-08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TaskList()
                .navigationTitle("Today")
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button(action: {
                            print("Add button was tapped")
                        }) {
                            HStack {
                                Image(systemName: "plus")
                                    .onTapGesture {
                                        print("User added task")
                                    }
                            }
                        }
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
