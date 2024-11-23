//
//  mealTableViewController.swift
//  test2
//
//  Created by student-2 on 23/11/24.
//

import UIKit

class mealTableViewController: UITableViewController {
    var meals:[Meal]{
        let breakfastRecipes = [
                Recipe(name: "Banana Pancakes", ingredients: ["Banana", "Flour", "Baking Powder", "Eggs", "Milk"], instructions: ["Mash the bananas", "Mix ingredients", "Cook on a griddle"], calories: 300, category: "Vegetarian"),
                Recipe(name: "Apple Oatmeal", ingredients: ["Oats", "Apple", "Cinnamon", "Water"], instructions: ["Boil water", "Cook oats", "Add apple and cinnamon"], calories: 250, category: "Vegetarian")
            ]
            
            let lunchRecipes = [
                Recipe(name: "Grilled Cheese Sandwich", ingredients: ["Bread", "Cheese", "Butter"], instructions: ["Butter the bread", "Grill the sandwich"], calories: 350, category: "Vegetarian"),
                Recipe(name: "Vegetable", ingredients: ["Lentils", "Tomatoes", "Garlic", "Spices"], instructions: ["Cook lentils", "Add spices and vegetables"], calories: 200, category: "Vegan")
            ]
            
            let dinnerRecipes = [
                Recipe(name: "Spaghetti Bolognese", ingredients: ["Spaghetti", "Ground Beef", "Tomato Sauce"], instructions: ["Cook spaghetti", "Prepare sauce with beef"], calories: 450, category: "Non-Vegetarian"),
                Recipe(name: "Chocolate Cake", ingredients: ["Flour", "Cocoa Powder", "Sugar", "Eggs", "Butter"], instructions: ["Mix ingredients", "Bake the cake"], calories: 500, category: "Vegetarian")
            ]
            
            
            let breakfast = Meal(name: "Breakfast", recipes: breakfastRecipes)
            let lunch = Meal(name: "Lunch", recipes: lunchRecipes)
            let dinner = Meal(name: "Dinner", recipes: dinnerRecipes)
            
           
           return [breakfast, lunch, dinner]
            
    }
    
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
        return meals[section].recipes.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MealCell", for: indexPath) as! MealCell
            
            let meal = meals[indexPath.row]
        let recipy=meal.recipes[indexPath.row]
            cell.mealNameLabel.text = recipy.name
        cell.calorieLabel.text = String(recipy.calories)
            
            
            return cell
        }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        meals[section].name
    }
    
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
