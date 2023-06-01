//
//  AlertActionConvertible.swift
//  SearchDaumBlog-ios
//
//  Created by 최진안 on 2023/06/01.
//

import UIKit

protocol AlertActionConvertible {
    var title: String { get }
    var style: UIAlertAction.Style { get }
}
