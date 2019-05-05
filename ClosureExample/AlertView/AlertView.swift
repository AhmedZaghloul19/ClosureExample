//
//  AlertView.swift
//  ClosureExample
//
//  Created by Ahmed Zaghloul on 5/5/19.
//  Copyright © 2019 Ahmed Zaghloul. All rights reserved.
//

import UIKit

class AlertView: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var approveButton: UIButton!
    @IBOutlet weak var holderStack: UIStackView!
    
    // MARK: Variables
    private var sourceView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        view.superview?.layer.cornerRadius = 3
    }
    
    convenience init(title: String, message: String?, sourceView: UIView) {
        self.init()
        Bundle.main.loadNibNamed("AlertView", owner: self, options: [:])
        self.titleLabel.text = title
        self.sourceView = sourceView
        if message != nil {
            self.messageLabel.text = message
        } else {
            self.messageLabel.isHidden = true
        }
        self.setupViewApperance()
    }
    
    func setupViewApperance() {
        self.view.superview?.layer.cornerRadius = 3
        self.modalPresentationStyle = .popover
        self.popoverPresentationController?.sourceView = sourceView
        self.popoverPresentationController?.permittedArrowDirections = [.down, .up]
        self.popoverPresentationController?.sourceRect = CGRect(x: sourceView.bounds.midX, y: sourceView.bounds.minY, width: 0, height: 0)
        self.preferredContentSize = CGSize(width: 345, height: self.messageLabel.isHidden ? 110 : 130)
        self.modalTransitionStyle = .crossDissolve
    }
    
    @IBAction func approveTapped() {
        // TODO: Approve tapping action
    }
    
    @IBAction func cancelTapped() {
        // TODO: Cancel tapping action
    }

}
