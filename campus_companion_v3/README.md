# Campus Companion - MAD2 Laboratory Exercise 3

This project continues the Campus Companion application and implements the complete Exercise 3 activity, including the Part 3 coding challenge.

## Included requirements

- Existing Exercise 2 welcome and Explore Campus flow
- `CampusAnnouncement` model with six records from the activity screenshots
- `UITableViewController` and `UITableViewDataSource` implementation
- Custom `AnnouncementCell` with an icon, title, category, date, and priority
- Reuse identifier `AnnouncementCell`
- Manual segue named `ShowAnnouncementDetailSegue`
- Row selection and announcement data passing through `prepare(for:sender:)`
- Urgent/Normal priority styling and `postedBy` data from the coding challenge
- Announcement detail screen showing title, category, date, priority, and posting office
- Auto Layout constraints matching the supplied screenshots

## Open and run

1. Extract the ZIP on a Mac.
2. Open `CampusCompanion.xcodeproj` in Xcode.
3. Select the `CampusCompanion` project in the Project Navigator.
4. Under **Signing & Capabilities**, choose your Apple ID team if Xcode requests one. For the Simulator, Xcode may run without a paid developer membership.
5. Choose an iPhone Simulator from the device menu.
6. Press **Command-R** or click the Run button.

## Verification

1. Tap **Campus Announcements** and confirm six announcement rows appear.
2. Confirm the Campus Wi-Fi row has the red Urgent styling.
3. Tap any row and confirm its title, category, date, priority, and posting office appear.
4. Tap Back, return to the welcome screen, and test **Explore Campus**.
5. Confirm the original personalized welcome flow still works, including the `Student` fallback.

## Important project connections

The outlets, actions, navigation controller, prototype cell, and segues are already connected in `Main.storyboard`. Do not rename `AnnouncementCell`, `ShowDetailSegue`, or `ShowAnnouncementDetailSegue` in only one place; the storyboard and Swift values must match exactly.

This project was prepared outside macOS, so its XML, property lists, file references, outlet/action mappings, and Swift source were validated here, but the final build must be performed in Xcode on a Mac.
