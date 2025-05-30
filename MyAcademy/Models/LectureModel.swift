import Foundation

struct Lecture {
    let id: String = UUID().uuidString
    let name: String
    let user: User
    let dayOfWeek: String
    let period: String
    let teacher: String
    let room: String
}

