//
//  ViewController.swift
//  FRBUikit_sample
//
//  Created by Ankitha Kamath on 13/06/22.
//

import UIKit
import FRBUIKit

class ViewController: UIViewController, FRBUIButtonGroupDelegate {
    
    func buttonGroup(_ group: FRBUIButtonGroup, didTapButton button: FRBUIButtonGroup.Button) {
        printContent("pressed")
    }
    
    private enum Properties
    {
        static let baseFont = UIFont.FRBUI.Body.smallRegular
        static let phoneFont = UIFont.FRBUI.Body.small
        static let baseTextColor = UIColor.FRBUI.Standard.gray1
        static let phoneTextColor = UIColor.FRBUI.Standard.green2
        static let attributedLocation: Int = 31
        static let attributedLength: Int = 15
    }
    
    private let firstTimeUserIllustrationImage = "Wire_Firat_Time_User_Illustration"
    
    lazy var errorView: UIView =
    {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        noticeView.backgroundColor = .white
        return view
    }()
    
    private var noticeView: FRBUIContextualNotice =
    {
        let noticeView = FRBUIContextualNotice()
        noticeView.translatesAutoresizingMaskIntoConstraints = false
        return noticeView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIFont.FRBUI.registerFonts()
       // sample()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: Any)
    {
        UIFont.FRBUI.registerFonts()
            if let controller = FRBUICatalogBuilder.buildUICatalogViewerController()
            {
             self.navigationController?.pushViewController(controller, animated: true)
            }
    }

//    func sample(){
//        view.addSubview(errorView)
//        errorView.addSubview(noticeView)
//        errorView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
//        errorView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 10).isActive = true
//        errorView.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
//        errorView.heightAnchor.constraint(equalToConstant: 400).isActive = true
//
//        let inputText = "Please try again or call us at (855) 886-4819 for assistance"
//        let attrText = NSMutableAttributedString()
//        let range = NSRange(location: Properties.attributedLocation, length: Properties.attributedLength)
//        attrText.append(NSMutableAttributedString(string: inputText))
//        attrText.addAttribute(NSAttributedString.Key.font, value: Properties.baseFont, range: NSRange(location: .zero, length: attrText.length))
//        attrText.addAttribute(NSAttributedString.Key.foregroundColor, value: Properties.baseTextColor, range: NSRange(location: .zero, length: attrText.length))
//        attrText.addAttribute(NSAttributedString.Key.foregroundColor, value: Properties.phoneTextColor, range: range)
//        attrText.addAttribute(NSAttributedString.Key.font, value: Properties.phoneFont, range: range)
//
//        let assetName = FRBUIIllustrationContainer.LottieAnimationAssets.statusOverlay.assetName
//
//        let variant = FRBUIContextualNotice.Variant(title: "First time User", asset: assetName, bodyCopy: attrText, buttonGroupConfig: [(.outlined, FRBUIButton.Content(title: "Main"))], buttonGroupVariant: .vertical)
//        noticeView.activeVariant = variant
//        noticeView.assetBundle = .main
//
//
//
//    }

    
}

