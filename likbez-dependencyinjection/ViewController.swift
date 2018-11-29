import UIKit

func test(topic: String, action: ()->()) {
    print("\n---------- \(topic) ----------")
    action()
}

class ViewController: UIViewController {

    /*
        Контейнер зависимостей - фреймворки которые помогают управлять зависимостями
    */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        propertyInjection()
        
        initializerInjection() //with Dependency Injection
        
        methodInjection()
        
        containerInjection()
    }
}

//TODO: - Реализовать контейнер зависимостей
func containerInjection() { }
