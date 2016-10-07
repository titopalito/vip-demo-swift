//
//  ArtistConfigurator.swift
//  VIPDemo
//
//  Created by Daniela Dias on 07/10/2016.
//  Copyright (c) 2016 ustwo. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit


// MARK: - ArtistConfigurator

class ArtistConfigurator {

    static let sharedInstance = ArtistConfigurator()


    // MARK: - Configuration

    func configure(viewController: ArtistViewController) {
        let router = ArtistRouter()
        router.viewController = viewController

        let presenter = ArtistPresenter()
        presenter.output = viewController

        let interactor = ArtistInteractor()
        interactor.output = presenter

        viewController.output = interactor
        viewController.router = router
    }
}
