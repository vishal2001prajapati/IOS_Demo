//
//  TableViewViewController.swift
//  IOS App
//
//  Created by Vishal Prajapati on 17/03/22.
import UIKit

class TableViewViewController: UIViewController {
    
    //MARK: - Variables
    var movieData = [MovieData]()
    
    //MARK: - Outlets
    @IBOutlet weak var myTable: UITableView!
    
    //MARK: - View lifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        let chichoreMovie = MovieData(mName: "Chichore", mRating: Float(Constant.imdb), mPhoto: "chichore")
        movieData.append(chichoreMovie)
        let kashmirFilesMovie = MovieData(mName: "The Kashmir Files", mRating: Float(Constant.imdb), mPhoto: "kashmirFiles")
        movieData.append(kashmirFilesMovie)
        let ludoMovie = MovieData(mName: "Ludo", mRating: Float(Constant.imdb), mPhoto: "ludo")
        movieData.append(ludoMovie)
        let inceptionMovie = MovieData(mName: "Inception", mRating: Float(Constant.imdb), mPhoto: "Inception")
        movieData.append(inceptionMovie)
        let radheshyamMovie = MovieData(mName: "Radhe Shyam", mRating: Float(Constant.imdb), mPhoto: "radheshyam")
        movieData.append(radheshyamMovie)
        let  redNoticeMovie = MovieData(mName: "Red Notice", mRating: Float(Constant.imdb), mPhoto: "rednotic")
        movieData.append(redNoticeMovie)
        let spidermanMovie = MovieData(mName: "Spider Man No Way Movie", mRating: Float(Constant.imdb), mPhoto: "spiderman")
        movieData.append(spidermanMovie)
        let tenetMovie = MovieData(mName: "Tenet", mRating: Float(Constant.imdb), mPhoto: "tenet")
        movieData.append(tenetMovie)
        let badlaMovie = MovieData(mName: "Badla", mRating: Float(Constant.imdb), mPhoto: "badla")
        movieData.append(badlaMovie)
    }
}

//MARK: - UITableViewDelegate
extension TableViewViewController: UITableViewDelegate  {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if  let cell = myTable.dequeueReusableCell(withIdentifier: Constant.cell, for: indexPath) as? MovieDataViewCell  {
            cell.configCell(mName: movieData[indexPath.row].movieName, mRating: movieData[indexPath.row].rating, mImage: movieData[indexPath.row].moviePhoto)
            return cell
        }
        return UITableViewCell()
    }
}

//MARK: - UITableViewDataSource
extension TableViewViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieData.count
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor  = UIColor.red
        return view
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor  = UIColor.black
        return view
    }
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        let cell  = tableView.cellForRow(at: indexPath)
        cell?.contentView.backgroundColor = .orange
    }
    
    func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
        let cell  = tableView.cellForRow(at: indexPath)
        cell?.contentView.backgroundColor = .brown
    }
}
