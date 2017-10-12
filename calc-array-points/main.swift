//
//  main.swift
//  calc-array-points
//
//  Created by Su Wang on 2017/10/12.
//  Copyright © 2017年 Su Wang. All rights reserved.
//

import Foundation

//
//  main.swift
//  calc-array
//
//  Created by Su Wang on 2017/10/10.
//  Copyright © 2017年 Su Wang. All rights reserved.
//

import Foundation

//create four functions for add, subtract, multiply, divide
func add(_ firstNumber:Int, _ secondNumber:Int) -> Int{
    return(firstNumber+secondNumber)
}

func subtract(_ firstNumber:Int, _ secondNumber:Int) -> Int{
    return(firstNumber - secondNumber)
}

func multiply(_ firstNumber:Int,_ secondNumber:Int) -> Int{
    return(firstNumber * secondNumber)
}

func divide(_ firstNumber:Int, _ secondNumber:Int) -> Int{
    return(firstNumber / secondNumber)
}

//create a function that expects one of them along with two Ints,it takes the two Ints and pass them to the function and return the result
func mathOperation1( left: Int, right : Int, operation: (Int, Int) -> Int) -> Int{
    return operation(left, right)
}

//Array fun
//take an array of Ints return the result of adding all of the elements
func arrayAdd(_ numbers:[Int]) -> Int{
    var sum: Int = 0
    for eachNumber in numbers{
        sum += eachNumber
    }
    return sum
}

//take an array of Ints return the result of multiplying all of the elements
func arrayMultiply(_ numbers:[Int]) -> Int{
    var sum: Int = 1
    for eachNumber in numbers{
        sum *= eachNumber
    }
    return sum
}

//take an array of Ints and return the count of all numbers in the array
func count(_ array:[Int]) -> Int{
    return array.count;
}

//take an array of Ints and return the average of all numbers in the array
func avg(_ arr:[Int]) -> Int{
    return arrayAdd(arr) / count(arr)
}

//refactor all four above down to another "generic math operation" approach
func mathOperation2( arr: [Int], operation: ([Int]) -> Int) -> Int{
    return operation(arr)
}

//Points
//adding two points, point is represented by a tuple (x, y)
func pointAdding(_ point1:(Int, Int), _ point2: (Int, Int)) -> (Int, Int){
    var result : (x: Int, y: Int)
    result.x = add(point1.0, point2.0)
    result.y = add(point1.1, point2.1)
    return result
}

//subtracting two points, point is represented by a tuple (x, y)
func pointSubtract(_ point1:(Int, Int), _ point2: (Int, Int)) -> (Int, Int){
    var result : (x: Int, y: Int)
    result.x = subtract(point1.0, point2.0)
    result.y = subtract(point1.1, point2.1)
    return result
}
//Adding points(more than 2 points) with non-two-arity handling
func pointsAdding(_ points:(Int, Int)...) -> (Int,Int) {
    var result: (Int,Int) = (0,0)
    for point in points{
        result.0 += point.0
        result.1 += point.1
    }
    return result;
}

// Subtracting points(more than 2 points) with non-two-arity handling
func pointsSubtracting(_ points:(Int, Int)...) -> (Int,Int) {
    var result: (Int,Int) = points[0]
    for i in 1...points.count-1{
        result.0 -= points[i].0
        result.1 -= points[i].1
    }
    return result;
}
//Adding points represented by dictionaries
func pointsAddDictionary(_ point1 : [String : Int]?, _ point2 : [String : Int]?) ->[String : Int]?{
    var result:[String : Int] = ["x": 0, "y": 0]
    if(point1?["x"] != nil && point1?["y"] != nil && point2?["x"] != nil && point2?["y"] != nil){
        result["x"] = (point1?["x"])! + (point2?["x"])!
        result["y"] = (point1?["y"])! + (point2?["y"])!
        return result;
    }
    return nil;
}

//Subtract points represented by dictionaries
func pointsSubtractDictionary(_ point1 : [String : Int]?, _ point2 : [String : Int]?) ->[String : Int]?{
    var result:[String : Int] = ["x": 0, "y": 0]
    if(point1?["x"] != nil && point1?["y"] != nil && point2?["x"] != nil && point2?["y"] != nil){
        result["x"] = (point1?["x"])! - (point2?["x"])!
        result["y"] = (point1?["y"])! - (point2?["y"])!
        return result;
    }
    return nil;
}

//Adding points with Double values represented by dictionaries
func pointsAddDictionaryDouble(_ point1 : [String : Double]?, _ point2 : [String : Double]?) ->[String : Double]?{
    var result:[String : Double] = ["x": 0.0, "y": 0.0]
    if(point1?["x"] != nil && point1?["y"] != nil && point2?["x"] != nil && point2?["y"] != nil){
        result["x"] = (point1?["x"])! + (point2?["x"])!
        result["y"] = (point1?["y"])! + (point2?["y"])!
        return result;
    }
    return nil;
}

//Subtract points with Double values represented by dictionaries
func pointsSubtractDictionaryDouble(_ point1 : [String : Double]?, _ point2 : [String : Double]?) ->[String : Double]?{
    var result : [String : Double] = ["x": 0.0, "y": 0.0]
    if(point1?["x"] != nil && point1?["y"] != nil && point2?["x"] != nil && point2?["y"] != nil){
        result["x"] = (point1?["x"])! - (point2?["x"])!
        result["y"] = (point1?["y"])! - (point2?["y"])!
        return result;
    }
    return nil;
}


