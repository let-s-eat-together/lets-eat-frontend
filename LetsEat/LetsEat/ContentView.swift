//
//  ContentView.swift
//  LetsEat
//
//  Created by 이현재 on 2023/08/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    topView()
                    
                    PlanListView()
                        .scrollContentBackground(.hidden)
                }
                VStack {
                    Spacer()
                    floatingButton()
                }
                .padding()
            }
        }
    }
}

struct topView: View {
    var body: some View {
        // top
        HStack {
            Text("약속 리스트")
                .font(.system(.largeTitle))
                .bold()
            
            Spacer()
            HStack {
                NavigationLink {
                    MessageView()
                } label: {
                    Image(systemName: "bell.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 35, height: 35)
                        .foregroundColor(.primary)
                }
                
                NavigationLink {
                    SettingView()
                } label: {
                    Image(systemName: "gearshape.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 35, height: 35)
                        .foregroundColor(.primary)
                }
            }
        }
        .padding(.horizontal, 20)
    }
}

struct floatingButton: View {
    @State var planDate: Date = Date()
    
    var body: some View {
        HStack {
            Spacer()
            
            NavigationLink {
                MakePlanView()
            } label: {
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.primary)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
