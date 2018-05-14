//
//  ViewController.swift
//  WeatherTable_iOS
//
//  Created by hoya kim on 14/05/2018.
//  Copyright © 2018 ChameleoN. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
	var data = [[String:String]]()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		let dict1 = ["Locale": "Korea", "Weather": "Rainy"]
		let dict2 = ["Locale": "Japan", "Weather": "Sunny"]
		let dict3 = ["Locale": "USA", "Weather": "Snow"]
		let dict4 = ["Locale": "China", "Weather": "Cloudy"]
		let dict5 = ["Locale": "Thailand", "Weather": "Blizzard"]
		let dict6 = ["Locale": "Hong Kong", "Weather": "Rainy"]
		let dict7 = ["Locale": "France", "Weather": "Blizzard"]
		let dict8 = ["Locale": "Brazil", "Weather": "Cloudy"]
		let dict9 = ["Locale": "UK", "Weather": "Snow"]
		let dict10 = ["Locale": "Russia", "Weather": "Sunny"]
		data = [dict1, dict2, dict3, dict4, dict5, dict6, dict7, dict8, dict9, dict10]
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return data.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
		var dict = data[indexPath.row]
		cell.textLabel!.text = dict["Locale"]
		let weather = dict["Weather"]
		cell.detailTextLabel!.text = weather
		if weather == "Sunny" {
			cell.imageView!.image = UIImage(named: "sunny")
		} else if weather == "Rainy" {
			cell.imageView!.image = UIImage(named: "rainy")
		} else if weather == "Snow" {
			cell.imageView!.image = UIImage(named: "snow")
		} else if weather == "Cloudy" {
			cell.imageView!.image = UIImage(named: "cloudy")
		} else if weather == "Blizzard" {
			cell.imageView!.image = UIImage(named: "blizzard")
		}
		return cell
	}
}
