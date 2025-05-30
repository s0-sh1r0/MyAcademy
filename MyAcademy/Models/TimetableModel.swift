import Foundation

struct Timetable {
    let id: String
    let classes: [[Lecture]]
    let user: User
    let isOnSaturday: Bool
    let isOnSanday: Bool
    let maxNumOfLectures: Int
}
