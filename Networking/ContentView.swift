//
//  ContentView.swift
//  Networking
//
//  Created by A'zamjon Abdumuxtorov on 01/01/24.
//

import SwiftUI
import Alamofire

struct ContentView: View {
    
    func apiPostList(){
        AFHttp.get(url: AFHttp.API_POST_LIST, params: AFHttp.paramsEmpty(), handler: { response in
            switch response.result{
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }
    func apiPostSingle(id:Int){
        AFHttp.get(url: AFHttp.API_POST_SINGLE + String(id), params: AFHttp.paramsEmpty(), handler: { response in
            switch response.result{
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }
    
    func apiPostCreat(post:Post){
        AFHttp.post(url: AFHttp.API_POST_CREATE, params: AFHttp.paramsPostCreate(post: post), handler: { response in
            switch response.result{
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }
    
    func apiPostUpdate(post:Post){
        AFHttp.put(url: AFHttp.API_POST_UPDATE + String(post.id!), params: AFHttp.paramsPostUpdate(post: post), handler: { response in
            switch response.result{
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }
    func apiPostDelete(post:Post){
        AFHttp.del(url: AFHttp.API_POST_DELETE + String(post.id!), params: AFHttp.paramsEmpty(), handler: { response in
            switch response.result{
            case .success:
                print(response.result)
            case let .failure(error):
                print(error)
            }
        })
    }
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }.onAppear{
//            apiPostList()
//            apiPostSingle(id: 1)
            let post = Post(title: "A'zamjon", body: "PDP")
//            apiPostCreat(post: post)
//            apiPostUpdate(post: post)
            apiPostDelete(post: post)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
