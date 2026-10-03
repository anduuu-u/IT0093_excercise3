# Exercise 3 Requirements Checklist

## Part 1 - Announcements list

- [x] `CampusAnnouncement` struct created
- [x] Six screenshot-matching sample announcements added
- [x] Campus Announcements button added below Explore Campus
- [x] `AnnouncementsViewController` subclasses `UITableViewController`
- [x] Table data-source methods implemented
- [x] Prototype cell identifier is `AnnouncementCell`
- [x] List screen is connected with a Show segue

## Part 2 - Custom cell and navigation

- [x] `AnnouncementCell` custom subclass created
- [x] Icon, title, and subtitle outlets connected
- [x] `configure(with:)` updates every reusable-cell property
- [x] Every row displays its category, date, and priority
- [x] Row selection implemented with `didSelectRowAt`
- [x] Manual segue uses `ShowAnnouncementDetailSegue`
- [x] Selected announcement passed through `prepare(for:sender:)`
- [x] Existing Explore Campus flow remains available

## Part 3 - Coding challenge

- [x] `priority` added to the model and sample records
- [x] `postedBy` added to the model and sample records
- [x] Urgent announcement uses red icon, text, and background styling
- [x] Normal announcements reset to standard styling during cell reuse
- [x] Detail screen displays all five announcement fields

## Before submission

- [ ] Open and build in Xcode with **Command-B**
- [ ] Run on an iPhone Simulator
- [ ] Confirm no Auto Layout warnings appear
- [ ] Test all six rows and both priority styles
- [ ] Add your required screenshots or student information to the submission
