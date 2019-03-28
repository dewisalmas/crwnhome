//
//  MovieDetailViewController.swift
//  FilmIndie
//
//  Created by Dewi Salma Salsabila on 28/03/19.
//  Copyright © 2019 claudia kenyta. All rights reserved.
//

import UIKit

    class MovieDetailViewController: UIViewController {
        
        @IBOutlet weak var movieImageView: UIImageView!
        @IBOutlet weak var labelMovieTitle: UILabel!
        @IBOutlet weak var labelMovieGenre: UILabel!
        @IBOutlet weak var labelMovieDuration: UILabel!
        @IBOutlet weak var labelMovieDirector: UILabel!
        @IBOutlet weak var labelMovieYear: UILabel!
        @IBOutlet weak var labelMovieLocation: UILabel!
        @IBOutlet weak var labelMovieDatePublish: UILabel!
        @IBOutlet weak var labelMovieNumVote: UILabel!
        @IBOutlet weak var labelMoviePublisher: UILabel!
        @IBOutlet weak var labelMovieSynopsis: UILabel!
        @IBOutlet weak var moviePoster: UIImageView!
        @IBOutlet weak var btnSwitchVote: UISwitch!
        @IBOutlet weak var labelVote: UILabel!
        
         var tempvote:Int=0
        override func viewDidLoad() {
        super.viewDidLoad()
            labelMovieTitle.text=homeListSreenViewController.GlobalVariable.videos[homeListSreenViewController.GlobalVariable.myIndex].title
            movieImageView.image=homeListSreenViewController.GlobalVariable.videos[homeListSreenViewController.GlobalVariable.myIndex].image
            
            labelMovieGenre.text=homeListSreenViewController.GlobalVariable.videos[homeListSreenViewController.GlobalVariable.myIndex].genre
            
            labelMovieDuration.text=homeListSreenViewController.GlobalVariable.videos[homeListSreenViewController.GlobalVariable.myIndex].duration
            
            labelMovieDirector.text=homeListSreenViewController.GlobalVariable.videos[homeListSreenViewController.GlobalVariable.myIndex].director
            
            labelMovieSynopsis.text=homeListSreenViewController.GlobalVariable.videos[homeListSreenViewController.GlobalVariable.myIndex].synopsis
            
            labelMovieYear.text=homeListSreenViewController.GlobalVariable.videos[homeListSreenViewController.GlobalVariable.myIndex].year
            
            labelMovieLocation.text=homeListSreenViewController.GlobalVariable.videos[homeListSreenViewController.GlobalVariable.myIndex].location
            
        labelMovieDatePublish.text=homeListSreenViewController.GlobalVariable.videos[homeListSreenViewController.GlobalVariable.myIndex].publishedDate
            
        labelMovieNumVote.text=homeListSreenViewController.GlobalVariable.videos[homeListSreenViewController.GlobalVariable.myIndex].totvote.description
            
        labelMoviePublisher.text=homeListSreenViewController.GlobalVariable.videos[homeListSreenViewController.GlobalVariable.myIndex].publisher
            
            moviePoster.image=homeListSreenViewController.GlobalVariable.videos[homeListSreenViewController.GlobalVariable.myIndex].poster
            
            if homeListSreenViewController.GlobalVariable.videos[homeListSreenViewController.GlobalVariable.myIndex].vote==false{
                btnSwitchVote.isOn=false
                labelVote.text="Vote"
            }else{
                btnSwitchVote.isOn=true
                labelVote.text="Unvote"
            }
          
            
        // Do any additional setup after loading the view.
    }
    
        @IBAction func switchVote(_ sender: UISwitch) {
            if homeListSreenViewController.GlobalVariable.videos[homeListSreenViewController.GlobalVariable.myIndex].vote==false{
                tempvote=homeListSreenViewController.GlobalVariable.videos[homeListSreenViewController.GlobalVariable.myIndex].totvote+1
                
                    homeListSreenViewController.GlobalVariable.videos[homeListSreenViewController.GlobalVariable.myIndex].vote=true
                
                btnSwitchVote.isOn=true
                homeListSreenViewController.GlobalVariable.videos[homeListSreenViewController.GlobalVariable.myIndex].totvote=tempvote
                
                    labelMovieNumVote.text=homeListSreenViewController.GlobalVariable.videos[homeListSreenViewController.GlobalVariable.myIndex].totvote.description
                
                labelVote.text="Unvote"
            }else{
                tempvote=homeListSreenViewController.GlobalVariable.videos[homeListSreenViewController.GlobalVariable.myIndex].totvote-1
                
                homeListSreenViewController.GlobalVariable.videos[homeListSreenViewController.GlobalVariable.myIndex].vote=false
                
                btnSwitchVote.isOn=false
                homeListSreenViewController.GlobalVariable.videos[homeListSreenViewController.GlobalVariable.myIndex].totvote=tempvote
                
                labelMovieNumVote.text=homeListSreenViewController.GlobalVariable.videos[homeListSreenViewController.GlobalVariable.myIndex].totvote.description
                
                labelVote.text="Vote"
            }
            
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
