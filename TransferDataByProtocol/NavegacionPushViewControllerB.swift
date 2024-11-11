//
//  NavegacionPushViewControllerB.swift
//  TransferDataByProtocol
//
//  Created by sergio ortiz on 02/11/2024.
//
import UIKit

protocol NavegacionPushViewControllerBDelegate: AnyObject {
    func didUpdateTitle(_ newTitle: String)
}

class NavegacionPushViewControllerB: UIViewController {
    
    weak var delegate: NavegacionPushViewControllerBDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "VC B"
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Enviar Título",
                                                                 style: .done,
                                                                 target: self,
                                                                 action: #selector(sendTitleToDelegate))
    }
    
    @objc
    private func sendTitleToDelegate() {
        let newTitle = "Nuevo Título desde B"
        
        // Llama al método del delegado para enviar el nuevo título
        delegate?.didUpdateTitle(newTitle)
        
        // Navega a `NavegacionPushViewControllerC`
        let nextVC = NavegacionPushViewControllerC()
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
}
