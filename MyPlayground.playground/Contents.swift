import Foundation

class ConvertExercise {
    func convert(_ intValue: Int) -> String {
        if intValue == 0 {
            return ""
        }
        
        let result = Double(intValue) / 3.0
        
        if result.truncatingRemainder(dividingBy: 1) != 0 {
            return String(format: "%.2f", result)
        }

        return String(Int(result))
    }
}


print(ConvertExercise().convert(9))
print(ConvertExercise().convert(5))
