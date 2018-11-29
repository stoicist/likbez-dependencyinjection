import UIKit

/*
    Low coupling - низкая связность
 
    Dependency Injection
 
    Передаем какой-то объект через инициализатор, а не через свойство
*/

protocol DataManager {
    func getData()
}

func initializerInjection() {
    
    test(topic: "Low Coupling - initializer injection") {
        
        class NetworkManager: DataManager {
            func getData() {
                print("getting data from network manager")
            }
        }
        
        class StoreManager: DataManager {
            func getData() {
                print("getting data from store manager")
            }
        }
        
        class ViewController: UIViewController {
            
            var dataManager: DataManager
            
            init(dataManager: DataManager) {
                self.dataManager = dataManager
                super.init(nibName: nil, bundle: nil)
            }
            
            required init?(coder aDecoder: NSCoder) {
                fatalError("init(coder:) has not been implemented")
            }
        }
        
        let storeManager = StoreManager()
        let viewController = ViewController(dataManager: storeManager) //мы теперь используем dependency injection - т.е. мы контролируем то что передаем в контроллер
        viewController.dataManager.getData()
        
    }
    
}
