//
//  SearchBar.swift
//  SearchDaumBlog-ios
//
//  Created by 최진안 on 2023/05/31.
//

import UIKit
import RxSwift
import RxCocoa

final class SearchBar: UISearchBar {
    let disposeBag = DisposeBag()
    
    let searchButton = UIButton()
    
    //SearchBar 버튼 탭 이벤트
    let searchButtonTapped = PublishRelay<Void>()
    
    //SearchBar 외부로 내보낼 이벤트
    var shouldLoadResult = Observable<String>.of("")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        bind()
        attribute()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func bind() {
        Observable
            .merge(
                self.rx.searchButtonClicked.asObservable(), // 서치버튼이 tap 되었을때
                searchButton.rx.tap.asObservable() // 우리가 커스텀한 버튼이 tap 되었을때
            )
            .bind(to: searchButtonTapped) // PublishRelay에 이 Observable을 바인딩해준다.
            .disposed(by: disposeBag)
        
        searchButtonTapped
            .asSignal()
            .emit(to: self.rx.endEditing) // emit()으로 연결한다. 그럼 키보드가 내려가는게 동작한다.
            .disposed(by: disposeBag)
    }
    
    private func attribute() {
        
    }
    
    private func layout() {
        
    }
}

// RX확장 선언
extension Reactive where Base: SearchBar {
    var endEditing: Binder<Void> {
        return Binder(base) { base, _ in // base는 SearchBar를 의미한다.
            base.endEditing(true)
        }
    }
}
