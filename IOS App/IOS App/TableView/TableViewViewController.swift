//
//  TableViewViewController.swift
//  IOS App
//
//  Created by Vishal Prajapati on 17/03/22.
import UIKit

class TableViewViewController: UIViewController {
    
    //MARK: - Variables
    var movieData = [MovieData]()
    var filterInfo: [MovieData]!
    
    //MARK: - Outlets
    @IBOutlet weak var myTable: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    //MARK: - View lifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        let chichoreMovie = MovieData(mName: "Chichore", mRating: 8.5, mPhoto: "chichore")
        movieData.append(chichoreMovie)
        let kashmirFilesMovie = MovieData(mName: "The Kashmir Files", mRating: 8.3, mPhoto: "kashmirFiles")
        movieData.append(kashmirFilesMovie)
        let ludoMovie = MovieData(mName: "Ludo", mRating: 8.5, mPhoto: "ludo")
        movieData.append(ludoMovie)
        let inceptionMovie = MovieData(mName: "Inception", mRating: 8.5, mPhoto: "Inception")
        movieData.append(inceptionMovie)
        let radheshyamMovie = MovieData(mName: "Radhe Shyam", mRating: 8.5, mPhoto: "radheshyam")
        movieData.append(radheshyamMovie)
        let  redNoticeMovie = MovieData(mName: "Red Notice", mRating: 8.5, mPhoto: "rednotic")
        movieData.append(redNoticeMovie)
        let spidermanMovie = MovieData(mName: "Spider Man No Way Movie", mRating: 8.5, mPhoto: "spiderman")
        movieData.append(spidermanMovie)
        let tenetMovie = MovieData(mName: "Tenet", mRating: 8.5, mPhoto: "tenet")
        movieData.append(tenetMovie)
        let badlaMovie = MovieData(mName: "Badla", mRating: 8.5, mPhoto: "badla")
        movieData.append(badlaMovie)
        filterInfo = movieData
    }
}
//MARK: - UITableViewDelegate
extension TableViewViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if  let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MovieDataViewCell  {
            cell.lblMovieName.text = filterInfo[indexPath.row].movieName
            cell.lblRating.text = String(filterInfo[indexPath.row].rating)
            cell.movieImage.image = UIImage(named: filterInfo[indexPath.row].moviePhoto)
            return cell
        }
        return UITableViewCell()
    }
}
//MARK: - UITableViewDataSource
extension TableViewViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filterInfo!.count
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
}
//MARK: - UISearchBarDelegate
extension TableViewViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filterInfo = []
        if searchText == "" {
            filterInfo = movieData
        }
        else {
            filterInfo.removeAll()
            for data in movieData {
                if data.movieName.uppercased().contains(searchText.uppercased()) {
                    filterInfo.append(data)
                }
            }
        }
        myTable.reloadData()
    }
}
