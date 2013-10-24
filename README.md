AutoLayoutIssue
===============

This project aims to solve a complex table view cell layout with auto layout.

Full discussions on Apple developers forums: https://devforums.apple.com/message/911019

### Be aware, this project is (for the moment) bugged.

If you launch the app in portrait, the cells are perfect. The pink label is displayed on 2 lines, each sizes and spacing are fully respected/calculated!
If then you rotate to landscape, the image doesn't grow and instead it's the yellow view and the pink label which are growing... Here's a screenshot: http://i.imgur.com/uijXEgd.png

Now If you launch the app in landscape, the cells are perfect too. The image is well sized (351 pts width (rounded value) * 456 pts heigth), etc...
If then you rotate to portrait it makes the app to crash... With the following output:
<blockquote>
Unable to simultaneously satisfy constraints.
	Probably at least one of the constraints in the following list is one you don't want. Try this: (1) look at each constraint and try to figure out which you don't expect; (2) find the code that added the unwanted constraint or constraints and fix it. (Note: If you're seeing NSAutoresizingMaskLayoutConstraints that you don't understand, refer to the documentation for the UIView property translatesAutoresizingMaskIntoConstraints) 
(
    "<NSLayoutConstraint:0xa3d9dd0 V:|-(0)-[UIImageView]   (Names: '|':UITableViewCellContentView )>",
    "<NSLayoutConstraint:0xa3d9e00 V:[UIView]-(8)-|   (Names: '|':UITableViewCellContentView )>",
    "<NSLayoutConstraint:0xa3d9e60 V:[UIImageView]-(8)-[UIView]>",
    "<NSLayoutConstraint:0xa3dd9b0 V:[UIImageView(456)]>",
    "<NSAutoresizingMaskLayoutConstraint:0xa3de670 h=--& v=--& V:[UITableViewCellContentView(431)]>"
)

Will attempt to recover by breaking constraint 
<NSLayoutConstraint:0xa3dd9b0 V:[UIImageView(456)]>
</blockquote>

Notes: You have to kill the app and rotate the simulator before relaunching the project from Xcode.
