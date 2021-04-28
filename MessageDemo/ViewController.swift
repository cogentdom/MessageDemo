//
//  ViewController.swift
//  MessageDemo
//
//  Created by Dominik Huffield on 4/28/21.
//

import UIKit
import MessageUI

class ViewController: UIViewController, MFMessageComposeViewControllerDelegate {

    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        switch result{
        case .sent:
            print("msg sent")
            dismiss(animated: true, completion: nil)
        case .cancelled:
            print("msg cancelled")
            dismiss(animated: true, completion: nil)
        case .failed:
            print("failed to send")
            dismiss(animated: true, completion: nil)
        default:
            print("")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sendMeg(_ sender: Any) {
        let mvc = MFMessageComposeViewController()
        mvc.recipients = [""]
        mvc.body = "a new msg"
        mvc.messageComposeDelegate = self
        
        present(mvc, animated:  true, completion: nil)
    }

}

