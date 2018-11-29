import UIKit

/*
 Low coupling - низкая связность
 
 Dependency Injection
 
 Initializer injection - Передаем какой-то объект через метод
 */

func methodInjection() {
    
    test(topic: "Low Coupling - method injection") {
       
        class Person {
            
            private var age: Int = 10
            
            func setAge(age: Int) {
                self.age = age
                print(self.age)
            }
        }
        
        let person = Person()
        person.setAge(age: 20)
        
    }
}

