//
//  NavegacionPushViewControllerA.swift
//  TransferDataByProtocol
//
//  Created by sergio ortiz on 02/11/2024.
//

import UIKit

// 1. Definimos el controlador `NavegacionPushViewControllerA`, que actuará como origen
class NavegacionPushViewControllerA: UIViewController, NavegacionPushViewControllerBDelegate { // Implementamos el protocolo de delegado
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 2. Configuramos el fondo y el título inicial del controlador
        view.backgroundColor = .green
        title = "Navegación Push"
        
        // 3. Creamos un botón en la barra de navegación que nos llevará a `NavegacionPushViewControllerB`
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next",
                                                                 style: .done,
                                                                 target: self,
                                                                 action: #selector(nextViewController))
    }
    
    // 4. Implementamos el método del protocolo para recibir el nuevo título desde `NavegacionPushViewControllerB`
    func didUpdateTitle(_ newTitle: String) {
        // 5. Al recibir el nuevo título, lo asignamos como el título de `NavegacionPushViewControllerA`
        self.title = newTitle
        
        // 6. También imprimimos el nuevo título en la consola para verificar
        print("Nuevo título recibido: \(newTitle)")
    }
    
    // 7. Método para navegar a `NavegacionPushViewControllerB`
    @objc
    private func nextViewController() {
        // 8. Creamos una instancia de `NavegacionPushViewControllerB`
        let nextVC = NavegacionPushViewControllerB()
        
        // 9. Asignamos `NavegacionPushViewControllerA` como el delegado de `nextVC`
        nextVC.delegate = self
        
        // 10. Navegamos a `NavegacionPushViewControllerB` usando el `navigationController`
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
}
