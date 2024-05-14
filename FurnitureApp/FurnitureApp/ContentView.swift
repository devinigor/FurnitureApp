//
//  ContentView.swift
//  FurnitureApp
//
//  Created by Игорь Девин on 10.05.2024.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Constants
    
    private enum Constants {
        static let title = "169.ru"
        static let logoImage = "https://masterpiecer-images.s3.yandex.net/da042c2d587811eea6afb29646062438:upscaled"
        static let getButtonnTitle = "Get Started"
        static let qustionsTitle = "Don't have an account?"
        static let signButtonTitle = "Sing in here"
    }
    var body: some View {
        ZStack {
                LinearGradient(colors: [.gradientTop, .gradientBottom], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack{
                    Text(Constants.title)
                        .font(.largeTitle.bold())
                        .foregroundColor(.white)
                    AsyncImage(url: URL( string: Constants.logoImage), scale: 2) { image in
                        image
                            .resizable()
                            .scaledToFit()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 200, height: 200)
                    Spacer()
                        .frame(height: 75)
                    buttonStack
                        .onTapGesture {
                            UIApplication.shared.endEditing()
                }
            }
            if isShowDeveloperInfo {
                developerView
                    .transition(.scale.animation(.snappy))
            }
            if isShowProgrwssView {
                ProgressView()
            }
        }
    }
    @State private var isShowbuton = false
    @State private var isShowText = false
    @State private var signUpPresent = false
    @State private var isShowDetailView = false
    @State private var isShowDeveloperInfo = false
    @State private var isShowProgrwssView = false
    private var buttonStack: some View {
        VStack(spacing: 5){
            Button {
                isShowDetailView = true
            } label: {
                if isShowbuton {
                    Text(Constants.getButtonnTitle)
                        .frame(width: 300, height: 55)
                        .foregroundStyle(LinearGradient(colors: [.gradientTop, .gradientBottom], startPoint: .top, endPoint: .bottom))
                }
            }
            .background(Color.white)
            .cornerRadius(27)
            .shadow(color: .black.opacity(0.4) ,radius: 10, x: 1, y: 9)
            .transition(.slide)
            .onLongPressGesture(minimumDuration: 0.5, perform: {
                withAnimation(.easeInOut) {
                    isShowDeveloperInfo.toggle()
                }
            })
            Spacer()
                .frame(height: 75)
            if isShowText {
                Text(Constants.qustionsTitle)
                    .foregroundColor(.white)
                Spacer()
                    .frame(height: 20)
                Button(Constants.signButtonTitle) {
                    isShowProgrwssView = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        signUpPresent = true
                    }
                }
                .font(.title.bold())
                .foregroundColor(.white)
                Divider()
                    .background(Color.white)
                    .frame(width: 130)
            }
        }
        .transition(.opacity)
        .fullScreenCover(isPresented: $signUpPresent, content: {
            SignUpView()
        })
        .fullScreenCover(isPresented: $isShowDetailView, content: {
            TabUIView()
        })
        .onAppear(){
            withAnimation(.easeIn(duration: 1)){
                isShowbuton = true
                DispatchQueue.main.asyncAfter(deadline: . now() + 1.2) {
                    withAnimation() {
                        isShowText = true
                    }
                }
            }
        }
    }
    
    private var developerView: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(.gray.opacity(0.6))
                .frame(width: 200, height: 120)
            VStack {
                Text("Hello")
                Spacer()
                    .frame(height: 20)
                Text("World")
            }
        }
    }
    
}

#Preview {
    ContentView()
}
