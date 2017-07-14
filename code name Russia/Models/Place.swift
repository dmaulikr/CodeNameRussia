//
//  Place.swift
//  code name Russia
//
//  Created by Emil Karimov on 14.07.17.
//  Copyright © 2017 Emil Karimov. All rights reserved.
//

import Foundation


struct Place: Codable {
    
    var headerLocation: String
    var headerFullLocation: String
    var suggestedRadius: String
    var headerLocationGranularity: String
    var totalResults: Int
    
    var groups: [Group]
    
    struct Group: Codable {
        
        var type: String
        var name: String
        var items: [Item]
        
        struct Item: Codable {
            var reasons: Reasons
            var venue: Venue
            var tips: [Tips]
            var referalId: String
            
            struct Reasons: Codable {
                var count: Int
                var items: [Item]
                
                struct Item: Codable {
                    var summary: String
                    var type: String
                    var reasonName: String
                }
            }
            
            struct Venue: Codable {

                var id: String
                var name: String
                var contact: Contact
                var location: Location
                var categories: [Categories]
                var verified: Bool
                var stats: Stats
                var url: String
                var rating: Float
                var ratingColor: String
                var ratingSignals: Int
                var beenHere: BeenHere
                var hours: Hours
                var photos: Photos
                var hereNow: HereNow
                
                struct Contact: Codable {
                    var twitter: String
                    var instagram: String
                    var facebook: String
                    var facebookUserName: String
                    var facebookName: String
                }
                struct Location: Codable {
                    var address: String
                    var crossStreet: String
                    var lat: Float
                    var lng: Float
                    var distance: Float
                    var postalCode: Int
                    var cc: String
                    var city: String
                    var state: String
                    var country: String
                    var formattedAddresss: [String]
                }
                struct Categories: Codable {
                    var id : String
                    var name: String
                    var pluralName: String
                    var shortName: String
                    var icon: Icon
                    var primary: Bool
                    
                    
                    struct Icon: Codable {
                        var prefix: String
                        var suffix: String
                    }
                }
                struct Stats: Codable {
                    var chekinsCount: Int
                    var usersCount: Int
                    var tipCount: Int
                }
                struct BeenHere: Codable {
                    var count: Int
                    var marked: Bool
                    var lastCheckinExpiredAt: Float
                }
                struct Hours: Codable {
                    var isOpen: Bool
                    var isLocalHoliday: Bool
                }
                struct Photos: Codable {
                    var count: Int
                }
                struct HereNow: Codable {
                    var count: Int
                    var summary: String
                    
                }
            }
            
            struct Tips: Codable {
                
                var id: String
                var createdAt: Int
                var text: String
                var type: String
                var canonicalUrl: String
                var likes: Likes
                var logView: Bool
                var agreeCount: Int
                var disagreeCount: Int
                var todo: Todo
                var user: User
                
                struct Likes: Codable {
                    var count: Int
                    var summary: String
                }
                struct Todo: Codable {
                    var count: Int
                }
                struct User: Codable {
                    var id: String
                    var firstName: String
                    var lastName: String
                    var gender: String
                    var photo: Photo
                    struct Photo: Codable {
                        var prefix: String
                        var suffix: String
                    }
                }
            }
        }
    }
}
