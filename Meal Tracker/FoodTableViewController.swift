//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Jacob Davis on 10/14/23.
//

import UIKit

class FoodTableViewController: UITableViewController {

    var meals: [Meal] = [
        Meal(name: "Breakfast", food: [
            Food(name: "Eggs", description: "Over-easy"),
            Food(name: "Toast", description: "Toasted Bread"),
            Food(name: "Jam", description: "Strawberry Jam")
        ]
            ),
        Meal(name: "Lunch", food: [
            Food(name: "Ham Sandwich", description: "Bread with lettuce, tomato and cheese"),
            Food(name: "Yogurt", description: "Peach Yogurt")
        ]
            ),
        Meal(name: "Dinner", food: [
            Food(name: "Chow Mein", description: "Noodles"),
            Food(name: "Orange Chicken", description: "Chicken covered in a delicious sauce"),
            Food(name: "Broccoli Beef", description: "Broccoli and Beef cooked into a yummy combo")
        ]
            )
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals[section].food.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        
        // Configure the cell...

        var content = cell.defaultContentConfiguration()
        content.text = meals[indexPath.section].food[indexPath.row].name
        content.secondaryText = meals[indexPath.section].food[indexPath.row].description
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return meals[section].name
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
