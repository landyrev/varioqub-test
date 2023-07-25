//
//  ViewController.swift
//  Test Project
//
//  Created by Alexey Landyrev on 25.07.2023.
//

import UIKit
import YandexMobileMetrica
import YandexMobileMetricaCrashes
import Varioqub
import MetricaAdapter

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initAppMetrica()
    }


    func initAppMetrica() {

      let adapter = AppmetricaAdapter()

      // Конфигурируем настройки Varioqub SDK

      var vqCfg = VarioqubConfig.default

      // Добавляем клиентские параметры

      vqCfg.clientFeatures["feature1"] = "value1"

      // Инициализируем Varioqub SDK

      VarioqubFacade.shared.initialize(apiKey: "appmetrica.APPLICATION_ID", config: vqCfg, idProvider: adapter, reporter: adapter)
    }
}

