import UIKit

/*
    Hight coupling - высокая связность (если много пропертей)
*/

func propertyInjection() {
    
    test(topic: "Hight Coupling - initializer injection") {
        
        //Сервис/Менеджер
        class NetworkManager {
            func getData() {
                print("getting data from network manager")
            }
        }
        class StoreManager {
            func getData() {
                print("getting data from store manager")
            }
        }
        
        //Контроллер
        class ViewController: UIViewController {
            var networkManager: NetworkManager? = NetworkManager()
        }
        
        //Передать в контроллер сервис откуда мы хотим получать данные
        let viewController = ViewController()
        viewController.networkManager?.getData()
    }
}
