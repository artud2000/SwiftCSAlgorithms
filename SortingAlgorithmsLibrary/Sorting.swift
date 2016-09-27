//
//  Sorting.swift
//  SortingAlgorithmsLibrary
//
//  Created by Arturo Fernandez on 9/17/16.
//  Copyright © 2016 Arturo Fernandez. All rights reserved.
//

import Foundation

class Sorting {
    class func insertionSort(elements: [Int]) -> [Int] {
        var tempElements: [Int] = elements
         
        for index in 1...elements.count - 1 {
            var pivot: Int = index - 1
            var movedIndex: Int = index
            while( tempElements[movedIndex] < tempElements[pivot] ) {
                swap(&tempElements[movedIndex], &tempElements[pivot])
                movedIndex = pivot
                if pivot > 0 {
                    pivot = pivot - 1
                }
            }
        }
        
        return tempElements
    }
    
    class func insertionSortUsingReduce(elemts: [Int]) -> [Int] {
        
    }
    
    class func selectionSort(elements: [Int]) -> [Int] {
        var tempElements: [Int] = elements
        var smallest: Int
        var tempPivot: Int
        for index in 0...elements.count - 2 {
            smallest = tempElements[index]
            tempPivot = index
            for pivot in index + 1...elements.count - 1 {
                if smallest > tempElements[pivot] {
                    smallest = tempElements[pivot]
                    tempPivot = pivot
                }
            }
            let temp: Int = tempElements[index]
            tempElements[index] = smallest
            tempElements[tempPivot] = temp
        }
        
        return tempElements
    }
    
    class func printArray(elements: [Int], inOrder: Bool) {
        if inOrder == true {
            for index in 0...elements.count - 1 {
                print("\(elements[index]), ")
            }
        } else {
            for index in elements.count - 1...0 {
                print("\(elements[index]), ")
            }
        }
    }
}



