//
//  Infomation.swift
//  TiTiCalculator
//
//  Created by HauNguyen on 31/10/2565 BE.
//

import SwiftUI
import Neumorphic

struct Infomation: View {
    
    var body: some View {
        ZStack(alignment: .top) {
            
            VStack(spacing: 20) {
                self.header
                
                VStack(spacing: 20) {
                    InfoItem(urlString: .constant("https://github.githubassets.com/favicons/favicon-dark.png"),
                             title: "Giới thiệu Máy Tính TiTi",
                             destination: AnyView(TiTiIntroductuion()))
                    
                    Divider()
                    
                    InfoItem(urlString: .constant("https://github.githubassets.com/favicons/favicon-dark.png"),
                             title: "Giới thiệu công ty phần mềm MayTech",
                             destination: AnyView(WebViewDisplay()))
                }
                
                Spacer()
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .overlay(
            self.footer, alignment: .bottom
        )
        .background(Color.defaultMainColor.ignoresSafeArea())
        .ignoresSafeArea()
    }
    
    private var header: some View {
        VStack {
            
            Spacer()
            
            Image("logo-icon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .cornerRadius(20)
                .padding(.top, 50)
            
            Spacer()
            
            VStack(spacing: 0) {
                Text("\(AppDelegate.displayName)")
                    .font(.custom("AltoneTrial-BoldOblique", size: 26))
                    .foregroundColor(.white)
                
                Text("Powered by Maytech & The Code-Love Team")
                    .font(.subheadline)
                    .foregroundColor(.white)
            }
            .padding(.bottom, 10)
        }
        .frame(width: UIScreen.screenWidth, height: 300, alignment: .center)
        .background {
            Color.LinearGradientBackgroundInfo
        }
    }
    
    private var footer: some View {
        HStack(alignment: .center, spacing: 5) {
            Group {
                Text("Copyright")
                
                Image(systemName: "c.circle")
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 14, height: 14)
                
                Text("2022 ")
                
                Text("Maytech")
                    .fontWeight(.bold)
                    .foregroundColor(Color.OviLight)
            }
            .foregroundColor(.black)
        }
        .padding(.bottom, 10 + (UIScreen.edges?.bottom ?? 0))
    }
}

struct Infomation_Previews: PreviewProvider {
    static var previews: some View {
        Infomation()
    }
}
