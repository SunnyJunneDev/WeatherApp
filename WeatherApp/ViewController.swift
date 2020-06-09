//
//  ViewController.swift
//  WeatherApp
//
//  Created by Светлана Шардакова on 08.06.2020.
//  Copyright © 2020 Светлана Шардакова. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var appearentTemperatureLabel: UILabel!
    @IBOutlet weak var refreshButton: UIButton!
   
    @IBAction func refreshButtonPressed(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let icon = WeatherIconManager.Rain.image
        let currentWeather = CurrentWeather(temperature: 10.0, appearentTemperature: 5.0, humidity: 30, pressure: 250, icon: icon)
        updateUIWith(currentWeather: currentWeather)
    }
    
    func updateUIWith(currentWeather: CurrentWeather) {
        self.imageView.image = currentWeather.icon
        self.pressureLabel.text = "\(currentWeather.pressure)"
        self.temperatureLabel.text = "\(currentWeather.temperature)"
        self.appearentTemperatureLabel.text = "\(currentWeather.appearentTemperature)"
        self.humidityLabel.text = "\(currentWeather.humidity)"
        
        
        
        
    }
}

