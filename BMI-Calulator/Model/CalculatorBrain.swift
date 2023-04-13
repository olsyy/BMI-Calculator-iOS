import UIKit

struct CalculatorBrain {
    let advices = ["Underweight", "Normal", "Overweight"]
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        let colors: [UIColor] = [#colorLiteral(red: 0.1977539062, green: 0.2009544969, blue: 0.4621088505, alpha: 1), #colorLiteral(red: 0.1423823237, green: 0.4182947874, blue: 0.3408958316, alpha: 1), #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)]
        print(bmiValue)
        switch bmiValue {
        case 0..<18.5: bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: colors[0])
        case ...24.9: bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: colors[1])
        default: bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: colors[2])
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .blue
    }
}
