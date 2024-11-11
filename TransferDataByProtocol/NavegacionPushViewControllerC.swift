//
//  NavegacionPushViewControllerC.swift
//  TransferDataByProtocol
//
//  Created by sergio ortiz on 02/11/2024.
//

import UIKit


class NavegacionPushViewControllerC: UIViewController, NavegacionPushViewControllerBDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "VC C"
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Ir a B",
                                                                 style: .done,
                                                                 target: self,
                                                                 action: #selector(goToVCB))
    }
    
    // Implementación del método del protocolo para recibir el nuevo título
    func didUpdateTitle(_ newTitle: String) {
        self.title = newTitle
        print("Nuevo título recibido en VC C: \(newTitle)")
    }
    
    @objc
    private func goToVCB() {
        // Crear una instancia de `NavegacionPushViewControllerB`
        let vcB = NavegacionPushViewControllerB()
        
        // Asignar `self` como delegado de `vcB`
        vcB.delegate = self
        
        // Navegar a `vcB`
        self.navigationController?.pushViewController(vcB, animated: true)
    }
}
