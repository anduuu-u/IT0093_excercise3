import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var headingLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!

    var studentName: String = "Student"
    var notificationsEnabled: Bool = false
    var selectedRole: String = "Student"
    var announcement: CampusAnnouncement?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let announcement = announcement {
            title = "Detail"
            headingLabel.text = announcement.title
            headingLabel.textAlignment = .center
            messageLabel.text = """
            Category:     \(announcement.category)

            Date:             \(announcement.date)

            Priority:        \(announcement.priority)

            Posted By:   \(announcement.postedBy)
            """
        } else {
            title = "Campus Events"
            headingLabel.text = "Campus visit details"
            headingLabel.textAlignment = .natural
            let notificationStatus = notificationsEnabled ? "on" : "off"
            messageLabel.text = "Welcome, \(studentName)! (\(selectedRole))\nNotifications: \(notificationStatus)."
        }
    }
}
