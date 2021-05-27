//
//  TimeLineViewController.swift
//  Sweets Diary
//
//  Created by 丸井一輝 on 2021/05/25.
//

import UIKit

class TimeLineViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
import SwiftUI

struct Timeline {
    let id: Int
    let name: String
    let image: String
    let post: String
    let post_image: String
}

let timelines: [Timeline] = [
    Timeline(id: 0, name: "photo1", image: "maru1", post: "This is post content", post_image: "maru"),
    Timeline(id: 1, name: "photo2", image: "maru1", post: "This is post content", post_image: "maru"),
    Timeline(id: 2, name: "photo3", image: "maru1", post: "This is post content", post_image: "maru"),
    Timeline(id: 3, name: "photo4", image: "maru1", post: "This is post content", post_image: "maru"),
    Timeline(id: 4, name: "photo5", image: "maru1", post: "This is post content", post_image: "maru")
]

struct TimelineView: View {
    let timelines: [Timeline]

    var body: some View {
        VStack() {
            ForEach(self.timelines, id: \.id) { (timeline) in
                VStack(spacing: 0) {
                    HStack {
                        Image(timeline.image)
                            .resizable()
                            .clipShape(Circle())
                            .overlay(
                                Circle().stroke(Color.white, lineWidth: 4))
                            .frame(width: 50, height: 50, alignment: .leading)
                        Text(timeline.name)
                            .fontWeight(.bold)
                        Spacer()
                        Image(systemName: "list.bullet")
                    }
                        .padding(.horizontal, 5)
                    Divider()
                    Image(timeline.post_image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width, alignment: .center)
                        .clipShape(Rectangle())
                    Divider()
                    Group {
                        Text("(timeline.name) ").fontWeight(.bold) +
                        Text(timeline.post)
                    }
                        .padding(.horizontal, 5)
                        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                }
            }
        }
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView(timelines: timelines)
    }
}

