//
//  SceneDelegate.swift
//  TransferDataByProtocol
//
//  Created by sergio ortiz on 02/11/2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        // Crear una instancia de NavegacionPushViewControllerA
        let initialViewController = NavegacionPushViewControllerA()
        
        // Envolver el controlador en un UINavigationController
        let navigationController = UINavigationController(rootViewController: initialViewController)
        
        // Configurar la ventana principal con el UINavigationController
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = navigationController
        self.window = window
        window.makeKeyAndVisible()
    }
}
