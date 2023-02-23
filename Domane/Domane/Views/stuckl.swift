//
//  stuckl.swift
//  Domane
//
//  Created by Andrew Suster on 1/23/23.
//

import SwiftUI

struct stuckl: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("How to come up with a good domain name")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding([.top, .leading, .trailing], 16.0)
                
                Text("via Google Domains")
                    .padding(.top, -17.0)
                    .offset(x:-70)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.029, brightness: 0.516))
                
                
                VStack {
                    Text("Choosing a domain name can be one of the most important steps in establishing your brand or business. Your domain name is often one of the first things someone sees, and it can affect their impression of your website and your brand. A carefully chosen domain name may increase user interest and drive web traffic, while a carelessly chosen one might do the opposite.")
                        .padding(.horizontal, 20.0)
                    Text("While it isn’t an exact science, and there are few absolute rules, here are some guiding principles for picking a name that reflects and helps your brand.")
                        .padding(.top, 5.0)
                        .padding(.horizontal)
                }
                .padding(.top)
                
                Text("The Making of a Good Domain Name")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.top, 30.0)
                    .padding(.bottom, 15.0)
                
                
                VStack {
                    Text("Length")
                        .padding(.bottom, 1.0)
                    
                        .offset(x:-140)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    Text("When it comes to a domain name, less is more. Shorter names are easier to remember and to type, which means users are more likely to find you. It’s also easier to stand out when there’s less to read. It’s a good idea not to exceed 2-3 words.")
                        .padding(.horizontal, 23.0)
                }
                
                VStack {
                    Text("Simplicity")
                        .padding(.bottom, 1.0)
                        .padding(.top, 20.0)
                        .offset(x:-130)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    Text("You want people to remember your domain name and type it accurately. Complicated or uncommon words or names may be hard to remember and spell correctly.")
                        .padding(.horizontal, 12.0)
                        .offset(x:-5)
                }
                
                VStack {
                    Text("Keywords")
                        .padding(.bottom, 1.0)
                        .padding(.top, 20.0)
                        .offset(x:-129)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    Text("Relevant words help users find you in a search and recognize what you do at a glance. Keywords can include what you do or offer (like “coffee” or “cleaning”), or even your location. Including your location (like “miami”) in your domain name might also help you target local customers and users.")
                        .padding(.horizontal, 21.0)
                }
                
                VStack {
                    Text("Brand name")
                        .padding(.bottom, 1.0)
                        .padding(.top, 20.0)
                        .offset(x:-119)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    Text("Your domain name should reflect your brand, and vice versa. Brands can take time to develop, and including your unique brand name in your domain can help you stand out, gain recognition, and increase visits to your website. When creating your brand name and domain name, just be sure not to use any existing brand names or trademarks.")
                        .padding(.horizontal, 19.0)
                }
                
                VStack {
                    Text("Website name")
                        .padding(.bottom, 1.0)
                        .padding(.top, 20.0)
                        .offset(x:-112)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    Text("While it may seem obvious, your domain name should be the same as your brand name, or as close to it as possible. You don’t want to confuse people who type in your domain name and get to a website with a different name.")
                        .padding(.horizontal, 20.0)
                }
                
                VStack {
                    Text("Good, not perfect")
                        .padding(.bottom, 1.0)
                        .padding(.top, 20.0)
                        .offset(x:-98)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    Text("Many people get caught up trying to choose the perfect name, when that time could be spent building a great brand around a perfectly good domain name. Don't let choosing a perfect domain hold you back from starting your business or project.")
                        .padding(.horizontal)
                    
                    
                }
              
            }
            .padding(.bottom, 80.0)
            Text("https://domains.google/learn/how-to-come-up-with-a-good-domain-name/")
                .padding(.horizontal, 17.0)
                .padding(/*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/, 5)
        }
        
    }
    
}

struct stuckl_Previews: PreviewProvider {
    static var previews: some View {
        stuckl()
    }
}
