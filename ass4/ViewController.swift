//
//  ViewController.swift
//  ass4
//
//  Created by Andrew Stepien on 4/17/16.
//  Copyright © 2016 Andrew Stepien. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource{
    
    
   
    
    @IBOutlet var mytableview: UITableView!
    
    var mannerlist : [Manner] = [Manner(name:"Sneezing", description: "Cover your mouth when you cough or sneeze, and don't pick your nose in public", manimage: UIImage(named: "Sneezing" )),
        Manner(name: "EyeContact", description: "Always look people in the eye when speaking to people", manimage: UIImage(named: "EyeContact")),
        Manner(name: "Eating", description: "Use eating utensils properly. If you are unsure how to do so, ask someone to teach you or watch what people you respect do. Chew with your mouth closed",manimage: UIImage(named: "Eating")),
        Manner(name: "Drinking", description: "Drink Slowly and dont abuse alcohol", manimage: UIImage(named: "Drinking")),
        Manner(name: "AskNice", description: "Always say please and thank you",manimage: UIImage(named: "AskNice")),
        Manner(name: "Compliments", description: "Acknowlege other peoples admirable traits and make a comment about it. People like hearing compliments",manimage: UIImage(named: "Compliments")),
        Manner(name: "Bathroom",description: "Make sure to use the bathroom reguarly and always wash your hands afterwards",manimage: UIImage(named: "Bathroom")),
        Manner(name: "ExcuseMe",description: "always say excuse me when bumping into people or accidently bothering someone",manimage: UIImage(named: "ExcuseMe")),
        Manner(name: "Introductions", description: "make sure to introduce yourself to every new person you meet", manimage: UIImage(named: "Introduction")),
        Manner(name: "Goodbyes",description: "make sure to say goodbye and 'nice to talk to you' to the any people you are done talking to.",manimage: UIImage(named:"Goodbyes"))]
    
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("showdetails", sender: indexPath)
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue,
                  sender: AnyObject?) {
        
        if segue.identifier == "showdetails" {
            let detailViewController = segue.destinationViewController
                as! Viewtwo
            let selectedrow = mytableview.indexPathForSelectedRow
            let row = selectedrow!.row
            detailViewController.mannertype = mannerlist[row].name
            print(detailViewController.mannertype)
            
            //let myimage = UIImage(named:  String(mannerlist[row].manimage))
            //detailViewController.imageview1.image = myimage
            
            
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.mytableview.registerClass(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        self.mytableview.dataSource = self
        self.mytableview.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.mannerlist.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath) as UITableViewCell
        var man : Manner
        
        man = mannerlist[indexPath.row]
        
        cell.textLabel?.text = man.name
        
        
        
        return cell
    }
    



}

