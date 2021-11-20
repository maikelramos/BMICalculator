//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Maikel Ramos on 11/20/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    
    mutating func calculateBMI(h height: Float,w weight: Float){
        let bmiValue = weight/pow(height, 2)
        
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more chicken lol", color: UIColor(red: 0.22, green: 0.43, blue: 0.69, alpha: 1.00))
        }else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fitting McFitter", color: UIColor(red: 0.18, green: 0.87, blue: 0.57, alpha: 1.00))
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat less burgers olo", color: UIColor(red: 0.58, green: 0.00, blue: 0.00, alpha: 1.00))
        }
        
        
    }
    func getBMI() -> String{
        let bmiFormat = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiFormat
    }
    
    func getAdvice() -> String{
        let advice = bmi?.advice ?? "Thinking ..."
        return advice
    }
    
    func getColor() -> UIColor{
        let color = bmi?.color ?? .white
        return color
    }
}
