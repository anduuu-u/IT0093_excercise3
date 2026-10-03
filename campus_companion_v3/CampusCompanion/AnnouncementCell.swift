import UIKit

class AnnouncementCell: UITableViewCell {

    @IBOutlet weak var categoryIconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        categoryIconImageView.layer.cornerRadius = 16
        categoryIconImageView.clipsToBounds = true
        categoryIconImageView.contentMode = .center
    }

    func configure(with announcement: CampusAnnouncement) {
        titleLabel.text = announcement.title
        dateLabel.text = "\(announcement.category) • \(announcement.date) • \(announcement.priority)"
        dateLabel.adjustsFontSizeToFitWidth = true
        dateLabel.minimumScaleFactor = 0.82

        let isUrgent = announcement.priority == "Urgent"
        categoryIconImageView.image = UIImage(
            systemName: isUrgent ? "exclamationmark" : "megaphone.fill"
        )
        categoryIconImageView.tintColor = .white
        categoryIconImageView.backgroundColor = isUrgent ? .systemRed : .systemTeal
        contentView.backgroundColor = isUrgent
            ? UIColor.systemRed.withAlphaComponent(0.12)
            : .systemBackground
        titleLabel.textColor = .label
        dateLabel.textColor = isUrgent ? .systemRed : .secondaryLabel
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        categoryIconImageView.image = nil
        contentView.backgroundColor = .systemBackground
        titleLabel.text = nil
        dateLabel.text = nil
    }
}
