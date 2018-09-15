//
//  ImageLoadingAssembly.swift
//  TMDbCore
//
//  Created by Guille Gonzalez on 26/09/2017.
//  Copyright © 2017 Guille Gonzalez. All rights reserved.
//

import Foundation
import Kingfisher

final class ImageLoadingAssembly {
    private let webServiceAssembly: WebServiceAssembly

	private(set) lazy var imageRepository: ImageRepositoryProtocol = ImageRepository(webService: webServiceAssembly.webService,
	                                                                                 imageManager: KingfisherManager.shared)

	init(webServiceAssembly: WebServiceAssembly) {
		self.webServiceAssembly = webServiceAssembly
	}
}
