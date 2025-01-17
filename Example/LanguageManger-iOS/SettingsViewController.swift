//
//  SettingsViewController.swift
//  LanguageManager
//
//  Created by abedalkareem omreyh on 4/9/17.
//  Copyright © 2017 abedalkareem. All rights reserved.
//

import UIKit
import LanguageManager_iOS

class SettingsViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

  }

  @IBAction func changeLanguage(_ sender: UIButton) {

    let selectedLanguage: Languages = sender.tag == 1 ? .en : .ar

    let storyboard = UIStoryboard(name: "Main", bundle: nil)

    // change the language
    LanguageManager.shared.setLanguage(language: selectedLanguage, rootViewController: storyboard.instantiateInitialViewController(), animation: { view in
      view.transform = CGAffineTransform(scaleX: 2, y: 2)
      view.alpha = 0
    })

  }

}
