//
//  Datas.swift
//  SneakersLover
//
//  Created by Florian  on 10/03/2021.
//

import Foundation

class Datas {
    var adidas: [Sneakers] = [
    Sneakers(name: "Americana", desc: "pompe blanche avec bandes bleu et rouge", imageSting: "AdidasAmericana", price: "125", BestSeller: "New York"),
        Sneakers(name: "Forum", desc: "pompe aux couleurs moderne", imageSting: "AdidasForum", price: "150",BestSeller: "Allemagne"),
    Sneakers(name: "NMD", desc: "pompe noire et blanche", imageSting: "AdidasNMD", price: "115",BestSeller: "Austalie"),
    Sneakers(name: "Superstar", desc: "pompe aux bandes noires doublées de motifs ", imageSting: "AdidasSuperstar", price: "130",BestSeller: "Italie"),
    Sneakers(name: "ZX500", desc: "pompe bleu sobre aux bandes grises", imageSting: "AdidasZX500", price: "120", BestSeller: "Londres")]
    
    var nike: [Sneakers] = [
    Sneakers(name: "Dunk", desc: "pompe orange et blanche", imageSting: "AirDunk", price: "180", BestSeller: "Afrique du Sud"),
    Sneakers(name: "XXXV", desc: "pompe aux couleurs improbables et la semelle invraisemblable", imageSting: "AirJordanXXXV", price: "220", BestSeller: "Marseille"),
    Sneakers(name: "Volley", desc: "pompe blanche avec une semelle aux couleur flash", imageSting: "AirMaxVolley", price: "200",BestSeller: "Rio"),
    Sneakers(name: "Jordan", desc: "pompe aux couleur chaude et pointe froide", imageSting: "NikeAirJordan", price: "250", BestSeller: "Medelin"),
    Sneakers(name: "Cosmic", desc: "pompe aux couleurs...Cosmique", imageSting: "NikeCosmic", price: "300", BestSeller: "San Francisco")]
    
    var puma : [Sneakers] = [
    Sneakers(name: "Five Mid", desc: "pompe beige avec motif en texture", imageSting: "Baskets-Black-Fives-Mid", price: "130", BestSeller: "Tokyo"),
    Sneakers(name: "Rider Twofold Pop", desc: "pompe aux diverses couleurs flash de preference", imageSting: "Baskets-Future-Rider-Twofold-Pop", price: "150", BestSeller: "Pekin"),
    Sneakers(name: "Mirage Tech Dark", desc: "pompe noire et rouge aux style mordern", imageSting: "Baskets-Mirage-Tech-Dark", price: "160", BestSeller: "Moscou"),
        Sneakers(name: "Mirage Tech", desc: "pompe avec des couleurs flash qui la talonne", imageSting: "Baskets-Mirage-Tech", price: "140", BestSeller: "Inde"),
    Sneakers(name: "Fast heat", desc: "pompe mi orange, mi verte et mi orange deriere", imageSting: "Baskets-RS-Fast-Heat", price: "115", BestSeller: "Cote d Ivoire")]
    
    func all() -> [Sneakers] {
        var base = adidas
        base.append(contentsOf: nike)
        base.append(contentsOf: puma)
        return base
    }
}
