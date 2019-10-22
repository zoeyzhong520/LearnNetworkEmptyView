//
//  EmptyView.swift
//  DisplayNetworkEmptyView
//
//  Created by 仲召俊 on 2019/10/22.
//  Copyright © 2019 zhongzj. All rights reserved.
//

import UIKit

class EmptyView: UIView {

    enum EmptyViewType {
        case NoData, NoNetwork
    }
    
    typealias EmptyViewRefreshBlock = () -> Void
    
    private var _refreshBlock: EmptyViewRefreshBlock?
    
    private static let NoDataInfo = "网络不给力，点击屏幕重试"
    private static let NoNetworkInfo = "网络连接中断，请检查网络设置"
    
    private lazy var infoLabel: UILabel = {
        let lb = UILabel(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 30))
        lb.center = self.center
        lb.textAlignment = .center
        lb.text = EmptyView.NoNetworkInfo
        lb.textColor = .gray
        lb.font = UIFont.systemFont(ofSize: 20)
        return lb
    }()
    
    init(refreshBlock: EmptyViewRefreshBlock? = nil) {
        super.init(frame: UIScreen.main.bounds)
        backgroundColor = .white
        _refreshBlock = refreshBlock
        setUI()
        addTapGesture()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension EmptyView {
    private func setUI() {
        addSubview(infoLabel)
    }
    
    private func addTapGesture() {
        addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(refreshTapAction)))
    }
    
    @objc func refreshTapAction() {
        _refreshBlock?()
    }
    
    ///刷新UI展示
    func reloadEmptyView(type: EmptyViewType) {
        switch type {
        case .NoData:
            infoLabel.text = EmptyView.NoDataInfo
        case .NoNetwork:
            infoLabel.text = EmptyView.NoNetworkInfo
        }
    }
}
