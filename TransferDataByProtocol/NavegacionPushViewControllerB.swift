//
//  NavegacionPushViewControllerB.swift
//  TransferDataByProtocol
//
//  Created by sergio ortiz on 02/11/2024.
//
import UIKit

// 1. Definimos el protocolo para que `NavegacionPushViewControllerB` pueda enviar datos de vuelta a su delegado
protocol NavegacionPushViewControllerBDelegate: AnyObject {
    func didUpdateTitle(_ newTitle: String) // Método para enviar un nuevo título
}

// 2. Definimos el controlador `NavegacionPushViewControllerB`
class NavegacionPushViewControllerB: UIViewController {
    
    // 3. Creamos una propiedad `delegate` de tipo `NavegacionPushViewControllerBDelegate` para almacenar el delegado
    weak var delegate: NavegacionPushViewControllerBDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 4. Configuramos el fondo y el título de `NavegacionPushViewControllerB`
        view.backgroundColor = .white
        title = "View Controller B"
        
        // 5. Creamos un botón en la barra de navegación para enviar el título de regreso al delegado
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Enviar Título",
                                                                 style: .done,
                                                                 target: self,
                                                                 action: #selector(sendTitleBack))
    }
    
    // 6. Método que se llama cuando el usuario toca el botón "Enviar Título"
    @objc
    private func sendTitleBack() {
        // 7. Definimos el nuevo título que queremos enviar
        let newTitle = "Nuevo Título desde B"
        
        // 8. Llamamos al método del delegado para enviar el nuevo título a `NavegacionPushViewControllerA`
        delegate?.didUpdateTitle(newTitle)
        
        // 9. Volvemos a `NavegacionPushViewControllerA` haciendo `pop` en el `navigationController`
        navigationController?.popViewController(animated: true)
    }
}
