//
//  ExpenseWatchDog.swift
//  ExpenseTracker
//
//  Created by Praveen Jangre on 13/07/2025.
//

import Foundation

protocol PriceVisitor {
    func visit(book: Book) -> Double
    func visit(computer: Computer) -> Double
    func visit(car: Car) -> Double
}

protocol PricedItem {
    func accept(visitor: PriceVisitor) -> Double
}





// Product types with different price retrieval methods

struct Book {
    let title: String
    let itemPrice: Double
    
}

extension Book: PricedItem {
    func accept(visitor: any PriceVisitor) -> Double {
        visitor.visit(book: self)
    }
}

struct Computer {
    let model: String
    let unitPrice: Double
    
}

extension Computer: PricedItem {
    func accept(visitor: any PriceVisitor) -> Double {
        visitor.visit(computer: self)
    }
}

struct Car {
    let make: String
    let stickerPrice: Double
    
}

extension Car: PricedItem {
    func accept(visitor: any PriceVisitor) -> Double {
        visitor.visit(car: self)
    }
}

struct ExpenseCalcular: PriceVisitor {
    
    func visit(book: Book) -> Double {
        book.itemPrice
    }
    
    func visit(computer: Computer) -> Double {
        computer.unitPrice
    }
    
    func visit(car: Car) -> Double {
        car.stickerPrice
    }
}




// Expense Watchdog
struct ExpenseWatchDog {
    func trackExpense(items: [PricedItem]) {
        var totalExpense = 0.0
        
//        for product in products {
//            if let book = product as? Book {
//                totalExpense += book.itemPrice
//            } else if let computer = product as? Computer {
//                totalExpense += computer.unitPrice
//            } else if let car = product as? Car {
//                totalExpense += car.stickerPrice
//            }
//        }
        
        let calculator = ExpenseCalcular()
        items.forEach { item in
            totalExpense += item.accept(visitor: calculator)
        }
        
        print(" Total expense: $\(totalExpense)")
    }
}


func computeTotalExpense() {
    let book = Book(title: "Swift Programming", itemPrice: 99.99)
    let computer = Computer(model: "MacBook Pro", unitPrice: 1999.99)
    let car = Car(make: "Tesla Model 4", stickerPrice: 49999.99)
    
    let watchdog = ExpenseWatchDog()
    watchdog.trackExpense(items: [book, computer, car])
}
