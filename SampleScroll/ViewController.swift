//
//  ViewController.swift
//  SampleScroll
//
//  Created by fingent on 08/02/16.
//  Copyright © 2016 fingent. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {

@IBOutlet var sampleLabel: UILabel!
@IBOutlet var sampleTextView: UITextView!


override func viewDidLoad() {
	super.viewDidLoad()
}

override func viewDidAppear(animated: Bool) {
	}
func scrollViewDidScroll(scrollView: UIScrollView){

	let verticalIndicator: UIImageView = (scrollView.subviews[(scrollView.subviews.count - 1)] as! UIImageView)
	verticalIndicator.backgroundColor = UIColor.redColor()

	let horizontalIndicator: UIImageView = (scrollView.subviews[(scrollView.subviews.count - 2)] as! UIImageView)
	horizontalIndicator.backgroundColor = UIColor.blueColor()
}
override func didReceiveMemoryWarning() {
	super.didReceiveMemoryWarning()
}
}
extension NSDate {
	func dateStringWithFormat(format: String) -> String {
		let dateFormatter = NSDateFormatter()
		dateFormatter.dateFormat = format
		return dateFormatter.stringFromDate(self)
	}
}
