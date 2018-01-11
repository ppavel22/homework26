//
//  main.swift
//  Homework26
//
//  Created by mac on 25.12.2017.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation
print("-------------Task1-------------")
func swapArray<Item>(mass: [Item]) -> [Item] {
    guard mass.isEmpty == false else {
        return mass
    }
    var newMass : [Item] = mass
    let temp: Item?
    temp = newMass[0]
    
    guard let a = temp else {fatalError()}
    newMass[0] = newMass[newMass.count - 1]
    newMass[newMass.count - 1] = a
    return newMass
}
var qwe : [Int] = []
var mass1 = [1, 2, 3, 4 , 5]
var mass2 = ["first", "second", "third", "fourth", "fifth"]
print(swapArray(mass: qwe))
print(qwe)
print(swapArray(mass: mass1))
print(mass1)
print(swapArray(mass: mass2))
print(mass2)
print("-------------Task2-------------")
func isSymmetric<Item>(mass: [Item]) -> Bool
    where  Item: Equatable {
        var result = false
        for _ in 0...mass.count {
            var counter1 = 0
            var counter2 = mass.count - 1
            result = mass[counter1] == mass[counter2]
            counter1 += 1
            counter2 -= 1
        }
        return result
}
var mass3 = [1, 2, 3, 1, 1]
var mass4 = ["first", "second", "third", "second", "first"]
print(mass3)
print(isSymmetric(mass: mass3))
print(mass4)
print(isSymmetric(mass: mass4))
print(mass1)
print(isSymmetric(mass: mass1))
print("-------------Task3-------------")
class  SortedArray<T: Comparable> {
    var items: [T] = [] {
        didSet {
            let sortedItems = items.sorted()
            items = sortedItems
        }
    }
    func appendItems( item: T) {
        items.append(item)
    }
    func removeLast() {
        items.removeLast()
    }
    func removeIndex(index: Int) {
        items.remove(at: index)
    }
}
var q = SortedArray<Int>()
q.appendItems(item: 1)
q.appendItems(item: 3)
q.appendItems(item: 2)
q.appendItems(item: 6)
q.appendItems(item: 9)
q.appendItems(item: 0)
q.removeIndex(index: 2)
print(q.items)
