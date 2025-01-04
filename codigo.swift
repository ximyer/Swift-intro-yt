import UIKit

var greeting = "Hello, playground"
var name = "Ximena"
let name2 = "Yeraldin"
var age = "19"
age = "20"

// TIPOS DE VARIABLES

// CHAR: Almacenar 1 solo caracter.
var symbol:Character = "e"
var symbol2:Character = "\u{2665}"
print(symbol2)

//STRINGS
var dogName:String = "Phillip"

// INTEGER
var year:Int = 2025

//FLOAT: Hasta 38 decimales
var piFloat:Float = 3.1415926535897932384626433
print(piFloat)

//DOUBLE: Doble de memoria que un Float
var piDouble = 3.1415926535897932384626433
print(piDouble)

//BOOL:
var imHappy = true

// OPERADORES ARITMÉTICOS
var a:Int = 5
let b:Int = 10
print(a)

var sum = a + b // Suma
var substract = a - b // Resta
var multiplication = a * b // Multiplicación
var division = a / b // División
var module = a % b // Módulo

// Operadores de asignación
var example = 5
example += 10
example -= 10
example *= 10
example /= 10
example %= 10

// Operadores lógicos y comparación
let age2 = 18

let isOlder = age2 > 18
let isYounger = age2 < 18
let isEqual = age2 == 35
let isNotEqual = age2 != 35
let isOlderOrEqual = age2 >= 18
let isYoungerOrEqual = age2 <= 18

let isSunny:Bool = true
let temperature:Int = 25

let isPleasant:Bool = temperature > 25 && isSunny
let goToBeach:Bool = temperature < 25 || isSunny
let wearHat:Bool = !isSunny


// CONVERSIONES

let integerNumber:Int = 34
let decimalNumber:Double = 25.65

let superNumero1:Int = integerNumber + Int(decimalNumber)
let superNumero2:Double = Double(integerNumber) + decimalNumber
print(superNumero1)
print(superNumero2)

let exampleString:String = "123"
//print(Int(exampleString))

/** EJERCICIO 1: REGISTRO DE ASISTENCIA 📝
 Declara una variable asistencias y asígnale un número de asistencias a una clase.
 Declara una variable totalClases y asígnale el número total de clases.
 Calcula el porcentaje de asistencia utilizando la fórmula Porcentaje = (Asistencias / TotalClases) * 100
 Imprime el porcentaje de asistencias.
 */

var asistencias:Int = 15
var totalClases:Int = 18
var porcentaje:Float = (Float(asistencias) / Float(totalClases)) * 100
print("El porcentaje de asistencia es de \(porcentaje) %")


/** EJERCICIO 2: CALCULADORA DE IMC 🏋️‍♂️
 Declara dos variables: peso en kg y altura en metros.
 Calcula el IMC utilizando la fórmula: IMC = peso / (altura * altura)
 Imprime el resultado
 */

var pesoKg:Float = 58.86
var alturaMetros:Float = 1.63
var imc:Float = pesoKg / (alturaMetros * alturaMetros)
print("El IMC de esta persona es de \(imc).")


/** EJERCICIO 3: CÁLCULO DE DESCUENTO 🧾
 Declara dos variables: precioOriginal y porcentajeDescuento.
 Calcula el precio después del descuento utilizando la fórmula: Descuento = Original - (Original * Descuento / 100)
 Imprime el precio original y el precio con descuento
 */

var precioOriginal:Float = 345.67
var porcentajeDescuento:Float = 12.34
var precioDescuento:Float = precioOriginal - (precioOriginal * porcentajeDescuento / 100)
print("El precio original del producto es de: $\(precioOriginal).")
print("Tras aplicar el descuento del % \(porcentajeDescuento), el precio final del producto es de $\(precioDescuento).")


// FUNCIONES
func showMyName(){
    print("Esta función es la primera que declaro en Swift! :)")
}
showMyName()

func showMyCustomName(nombre:String){
    print("Hola \(nombre)")
}
showMyCustomName(nombre: "Yeraldin")

func calculate(a:Int, b:Int){
    let result = a + b
    print("El resultado es \(result).")
}
calculate(a:10 , b:20)

func calculate2(_ a:Int, _ b:Int){
    let result = a + b
    print("El resultado es \(result)")
}
calculate2(20,2) // Da igual el orden porque está 100% seguro del orden.

func calculate3(a:Int, b:Int) -> Int{
    let result = a + b
    return result
} // Tipo de valor que va a retornar la función (->)

let superResult: Int = calculate3(a:10, b:5)
print(superResult)

// IF - ELSE

let userAge = 8

if userAge >= 18{
    print("Eres mayor de edad")
}else{
    print("Eres menor de edad")
}

func greeting(hour:Int){
    if hour < 12{
        print("Buenos días")
    }else if hour > 12 && hour < 20{
        print("Buenas tardes")
    }else{
        print("Buenas noches")
    }
}
greeting(hour:23)

func getMonth(month:Int){
    if month == 1{
        print("Enero")
    }else if month == 2{
        print("Febrero")
    }else if month == 3{
        print("Marzo")
    }else if month == 4{
        print("Abril")
    }else if month == 5{
        print("May")
    }else if month == 6{
        print("Junio")
    }else if month == 7{
        print("Julio")
    }else if month == 8{
        print("Agosto")
    }else if month == 9{
        print("Septiembre")
    }else if month == 10{
        print("Octubre")
    }else if month == 11{
        print("Noviembre")
    }else if month == 12{
        print("Diciembre")
    }else{
        print("Mes inválido o no existe")
    }
}
getMonth(month:10)

// SWITCH -> Función que a través de un parámetro puede realizar varias comprobaciones

func getMonthSwitch(month:Int){
    switch month{
    case 1: print("Enero")
    case 2: print("Febrero")
    case 3: print("Marzo")
    case 4: print("Abril")
    case 5: print("Mayo")
    case 6: print("Junio")
    case 7: print("Julio")
    case 8: print("Agosto")
    case 9: print("Septiembre")
    case 10: print("Octubre")
    case 11: print("Noviembre")
    case 12: print("Diciembre")
    default: print ("Introduce un mes válido.")
    }
}
getMonthSwitch(month:5)

func getTrimester(month:Int){
    switch month{
    case 1,2,3: print("Primer Trimestre")
    case 4,5,6: print("Segundo Trimestre")
    case 7,8,9: print("Tercer Trimestre")
    case 10,11,12: print("Cuarto Trimestre")
    default: print ("Introduce un periodo de tiempo válido.")
    }
}
getTrimester(month:8)

func getSemester(month:Int){
    switch month{
    case 1...6: print("Primer Semestre")
    case 7...12: print("Segundo Semestre")
    default: print ("Introduce un periodo de tiempo válido.")
    }
}
getSemester(month:10)


/** EJERCICIO 4: ÁREA DE UN CÍRCULO
Crea una función que reciba el radio de un círculo y devuelva su área (Pi * radio * radio)
Imprime el resultado en la pantalla
*/

// MI SOLUCIÓN
func areaCircle(radio:Float) -> Float{
    let pi:Float = 3.1416
    let area = (pi * radio * radio)
    print("The area of the circle with radius \(radio) is \(area)")
    return area
}
areaCircle(radio:5.82)

// VIDEO

func calculateAreaCircle(_ radius:Double) -> Double{
    return Double.pi * radius * radius
}
let radius:Double = 15
let result = calculateAreaCircle(radius)
print("El área de un círculo con radio  \(radius) es de \(result).")

/** EJERCICIO 5: +, -, 0
 Crea una función que reciba un número y con la ayuda de un IF imprima en pantalla si el número es positivo, negativo o cero.
 */

func typeNumber(miNumero:Int){
    if miNumero < 0{
        print("Mi número es negativo")
    }else if miNumero == 0{
        print("Mi número es cero")
    }else if miNumero > 0{
        print("Mi número es positivo")
    }else{
        print("Input inválido, prueba de nuevo.")
    }
}
typeNumber(miNumero:203)


/** EJERCICIO 6: SWITCH
 Crea una función que reciba un número y con la ayuda de un SWITCH  imprima en pantalla si el número es positivo, negativo o cero.
 */

func typeNumberSwitch(nuevoNumero:Int){
    switch nuevoNumero{
    case let x where x < 0: print("El número es negativo")
    case let x where x == 0: print("El número es 0")
    case let x where x > 0: print("El número es positivo")
    default: print("Input inválido, prueba de nuevo.")
    }
}
typeNumberSwitch(nuevoNumero:3)

// ARRAY -> Listado de variables
var daysOfWeek:[String] = ["Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo"]

print(daysOfWeek[3])
daysOfWeek[3] = "Juernes"
print(daysOfWeek[3])

print(daysOfWeek[0])
daysOfWeek.remove(at: 0)
print(daysOfWeek[0])

daysOfWeek.append("MONDAY")
print(daysOfWeek)

// BUCLES

for i in 1...5{
    print(i)
}

var daysOfWeek2:[String] = ["Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo"]
for day in daysOfWeek2{
    print("Hola! Hoy es \(day)")
}

var counter = 0
while counter < 10{
    print("En este momento el valor de counter es: \(counter)")
    counter += 1
}

var count2 = 5
repeat {
    print("YAAAAY")
} while count2 < 0

            
for day in daysOfWeek2{
    if day == "Jueves"{
        print("Hoy es jueves")
        break
    }else{
        print("No es jueves")
    }
}

for day in daysOfWeek2{
    print("----------")
    if day == "Jueves"{
        print("Hoy es jueves")
        continue
    }
    print("°°°°°°°°°°")
}

/** EJERCICIO 7:
 Escribe una función que reciba un número e imprima su tabla de multiplicar del 1 al 10.
 */

func tablaMultiplicar(tuNum:Int){
    for i in 1...10{
        var resultado = tuNum * i
        print("El resultado de multiplicar \(tuNum) * \(i) = \(resultado)")
    }
}
tablaMultiplicar(tuNum:5)

// VIDEO
func tablaMultiplicar2(tuNum:Int){
    for i in 1...10{
        print("El resultado de multiplicar \(tuNum) * \(i) = \(tuNum * i)")
    }
}
tablaMultiplicar2(tuNum:5)

/** EJERCICIO 8
 Escribe un programa que calcule la suma de todos los números pares del 1 al 100 y muestre el resultado.
 *Para saber si un número es par, se tiene que das la siguiente concición (número % 2 = 0)*
 */

var totalSum:Int = 0

for i in 1...100{
    if i % 2 == 0{
        totalSum += i
    }
}
print("El resultado de la suma es de: \(totalSum)")

/** EJERCICIO 9
 Escribe una función que cuente el número de vocales en una palabra y lo pinte
 TIP:  Las palabras (strings) pueden recorrerse con un bucle for.
 */
 

func numVocales(palabra:String){
    var vocales:Int = 0
    for letter in palabra{
        switch letter.lowercased(){
        case "a", "e", "i", "o", "u": vocales += 1
        default: continue
        }
    }
    print("el número de vocales en la palabra \(palabra) es de \(vocales)")
}
numVocales(palabra:"Ferrocarril")

// TUPLAS
var tupla = ("Ximena", 19, true, "Calle y numero", 1234567890, 1.63)
print(tupla.3)

// DICCIONARIO

var dicc:[String:Any] = ["nombre": "Ximena", "edad": 19, "vacaciones": true, "direccion": "Calle y numero"]
var myDiccName:String = dicc["nombre"] as? String ?? "Nombre Inválido"
print(myDiccName)

for (key, value) in dicc{
    print("La clave \(key) contiene \(value)")
}

// NULABILIDAD

var stringReal:String = "Loquesea"
var stringNil:String? = nil

print(stringReal)
//print(stringNil)

func ejemploNil(_ text:String){
    // Da igual?
}

ejemploNil(stringReal)
ejemploNil(stringNil ?? "ejemplo")
// ejemploNil(stringNil!)

func ejemploNil2(_ text:String?){
    
    if let example = text{
        print(example)
    }else{
        print("Introduce un nombre para continuar.")
    }
    
    guard let example2 = text else {
        return
    }
    print("Hola \(example2)")
}
ejemploNil2(stringReal)
ejemploNil2(stringNil)

// CLASES Y ESTRUCTURAS

class Persona{
    var name:String
    var age:Int
    var nationality:String
    
    init(name: String, age: Int, nationality: String) {
        self.name = name
        self.age = age
        self.nationality = nationality
    }
    
    func greeting(){
        print("Hola! Soy \(name), mi edad es \(age) años y mi nacionalidad es \(nationality).")
    }
}

var yera:Persona = Persona(name: "Yera", age: 18, nationality: "Mexicana")
var poli:Persona = Persona(name: "Poli", age: 2, nationality: "Americana")

yera.greeting()
poli.greeting()

struct ExampleStruct{
    var name:String
    var age:Int
}
var exampleStruct = ExampleStruct(name: "Chivi", age: 10)
// exampleStruct.age

//Start Date: January 2nd, 2025.
//End Date: January 4th, 2025.
