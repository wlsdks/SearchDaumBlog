//
//  MainViewController.swift
//  SearchDaumBlog-ios
//
//  Created by 최진안 on 2023/05/31.
//

import UIKit
import RxSwift
import RxCocoa

class MainViewController: UIViewController {
    let disposeBag = DisposeBag()
    
    //let listView
    //let searchBar
    
    // MARK: - 생성자
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        bind()
        attribute()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - 바인딩 작업을 해주는 함수
    private func bind() {
        
    }
    
    // MARK: - 뷰를 꾸미는 attribution코드를 모아놓은 함수
    private func attribute() {
        title = "다음 블로그 검색"
        view.backgroundColor = .white
    }
    
    // MARK: - 각종 서브뷰의 레이아웃을 설정하는 함수
    private func layout() {
        
    }
    
}
