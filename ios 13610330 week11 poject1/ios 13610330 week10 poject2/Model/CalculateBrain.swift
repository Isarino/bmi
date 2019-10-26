
import UIKit

//Kit แปลว่า ชุดเครื่องมือ
//UI แปลว่า USER Interface

//  struct จะเป็นแบบ Pass by value คือ เหมือนก็อปปี้แยกกันคนละอัน แก้กับอันใดอันหนึ่งไม่ได้ผลกับอีกอัน
//  class จะเป็นแบบ Pass by Reference เหมือนก็อปปี้แยกกันคนละอัน แต่แก้กับอันใดอันหนึ่งจะมีผลกับอีกอัน

struct CalculateBrain {
//    var bmi: Float = 0.0
    
    var bmiStruct: BMI? // 3 Value เก็บสามตัว เป็นชุด (value, advice, color)
    // เครื่องหมาย ? คือ ตัวแปร Optinal คือ ตัวแปรเลือกจะมีหรือไม่มีค่า ก็เป็นไปได้
    
    func getBMIValue() -> String {
//        let bmiTo1DecimalPlace = String(format: "%.1f", bmi)
        let bmiTo1DecimalPlace = String(format: "%.1f", bmiStruct?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmiStruct?.advice ?? "No Advice"
        
        // if แบบย่อ
        // ตัวแปรที่ต้องการดูว่ามีค่าหรือไม่ ?? ถ้าไม่มีค่าให้ใช้ค่าตรงนี้แทน
        // bmiStruct?.advice ?? "No Advice"
        // ตัวแปรที่ต้องการดูว่ามีค่าหรือไม่ ?? = bmiStruct?.advice
        // bmiStruct?.advice ?? "No Advice"
        
        
    }
    
    func getColor() -> UIColor {
        return bmiStruct?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        // bmi ตัวที่ใช้นี้ ไม่มี var หรือ let นำหน้า คือตัวที่เป็น Global var
        // ส่วน weight กับ height คือ ตัวที่ฟังก์ชั่นรับค่ามาในชื่อนั้น เป็น Local var
        let bmiValueLocal = weight / (height * height)
        if bmiValueLocal < 18.5 {
            bmiStruct = BMI(value: bmiValueLocal, advice: "Eat more pies", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if bmiValueLocal < 24.9  {
            bmiStruct = BMI(value: bmiValueLocal, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        }else {
            bmiStruct = BMI(value: bmiValueLocal, advice: "Eat less pies", color: #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1))
        }// end else
            
    }//end function calculateBMI
        
}//end struct CalculateBrain

