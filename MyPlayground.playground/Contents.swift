import UIKit
print("Practica de Markel Juaristi")
//PRÁCTICA 1

/*
 una función que devolverá bool si es divisible por algun numero de la lista primos para la función principal
 */
func isNumberPrime(num: Int ) -> Bool {
    //para descartar 0 y el primer numero
    if( num == 0){return false}
    else if(num == 1 || num == 2 || num == 3){return true}
    else {
        for value in 2..<(num){
            
            if (num % value == 0){return false}
            else {continue}
        }
    }
    return true
}

    
func getNumerosPrimos(amount: Int=100) -> Array<Int> {
    /*
     Una función que pedirá cuantos valores quieres en la lista que devuelva
     */
    var flag = true
    var index: Int = 1
    var listPrime : [Int] = []
    while flag {
        if (isNumberPrime(num: index) == true) {
            listPrime.append(index)
        }
        index += 1
        
        if listPrime.count >= amount {flag = false} else{continue}
    }
    print (listPrime)
    return listPrime
}

getNumerosPrimos(amount:15)


//2. EJERCICIO

func sumOperation( lista: Array<Int>) -> Int {
    var suma: Int = 0
    var index: Int = 0
    
    for num in lista{
        if (index < 50 ){
            suma += num
            index += 1}
        else {break}
    }
    print (suma)
    return suma
        
}
sumOperation(lista: getNumerosPrimos(amount: 50))
//3. EJERCICIO



/*
 Una función que identificará cuantas vocales tienen un string
 */
func vowelCounter( word: String) -> Bool {
    var countVowel = 0
    let vowels : String = "aeiou"
    let lowerWord = word.lowercased()
    
    for char in lowerWord {
        if vowels.contains(char) {
            countVowel += 1}
    }
    switch(countVowel) {
    case 0: return false
    case 1: return false
    default : return true
        
    }
     
}
    
var players: [String] = ["Vinicius","Messi", "Ronaldo", "Pedri", "Mbappe", "Modric", "Militao", "Morata", "Valverde", "Benzema", "Piqué"]
    var playerWithTwoVowels: [String] = []
for str in players {
    if (vowelCounter(word: str) == true) {
        playerWithTwoVowels.append(str)}
    }
print(playerWithTwoVowels)
    
/// 4. EJERCICIO

enum PlayerPosition {
    case portero
    case lateralIzquierda
    case central
    case lateralDerecho
    case mediocentro
    case extremoDerecho
    case extremoIzquierdo
    case delantero
    
}


///5. EJERCICIO
enum Member {
    case player(String)
    case coach(String)
    case staff(String)
}
    
    
class NationalTeam {
    let name : String
    var plantilla: [Member] = []
    
    init(name : String = "team", plantilla: [ Member]) {
        /* no he sido capaz de crear la lista plantilla un valor default*/
        self.name = name
        self.plantilla = plantilla
    }

}
let colombiaList  = [Member.coach("gabriel"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let argentinaLis  = [Member.coach("rene"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let mexicoList  = [Member.coach("andres"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let chileList  = [Member.coach("paco"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
            
let colombiaTeam = NationalTeam(name : "Colombia", plantilla : colombiaList)
let argentinaTeam = NationalTeam(name : "Argentina", plantilla : colombiaList)
let mexicoTeam = NationalTeam(name : "Mexico", plantilla : colombiaList)
let chileTeam = NationalTeam(name : "Chile", plantilla : colombiaList)


    
    
//6. EJERCICIO
    
class WorldCup {
    var participants: [NationalTeam] = []
    
    init(participants : [NationalTeam]){
        self.participants = participants
    }
}

let qatarParticipants22 : [NationalTeam] = [colombiaTeam, argentinaTeam, mexicoTeam, chileTeam]
let worldCupqatar22 = WorldCup(participants : qatarParticipants22)

//7. EJERCICIO + 8.EJERCICIO(como una función dentro de la clase grupo)

class GroupWorldCup{
    var name : String
    var player : [NationalTeam]
    init(group letter: String ,player : [NationalTeam]){
        self.player = player
        self.name = letter
    }
    
    private func match (local : NationalTeam, visit: NationalTeam) -> (NationalTeam, NationalTeam, Bool) {
        /* devolvemos una tupla con tres elementos el 1. ganador, 2. perdedor 3 si es empate sí o No*/
        let localPlayer : NationalTeam = local
        let visitPlayer : NationalTeam = visit
        let resultLocal = Int.random(in: 0...10)
        let resultVisit = Int.random(in: 0...10)
        var finalresulTuple : (NationalTeam, NationalTeam, Bool)
        print("\(localPlayer.name)  \(resultLocal) - \(resultVisit) \(visitPlayer.name)")
        if( (resultLocal - resultVisit) > 0 ){
            finalresulTuple = (localPlayer,visitPlayer, false)}
        else if( (resultLocal - resultVisit) < 0 ){
            finalresulTuple = (visitPlayer,localPlayer, false)}
        else {
            finalresulTuple = (localPlayer,visitPlayer, true)}
        return finalresulTuple
    }
    
    func choosePlayersToPlay (){
        switch(self.player.count){
        case 0...3 : print("deben ser 4 jugadores, declara de nuvo el grupo")/* para probar con el default suficiente*/
        case 4:
            var index : Int = 0
            var flag : Bool = false
            for posLocal in 0..<3 {
                /* el loop for deberia de ser  for posLocal in 0..< ((self.player.count)-1) pero me da error
                 no interesa que llega al último equipo, ya ha jugado contra todos*/
                for posVisit in 1..<self.player.count{
                    match(local: self.player[posLocal], visit: self.player[posVisit + index])
                    if (flag == false && (posVisit + index ) == 2 && index == 1) { flag = true }
                    else if(flag == true  && (posVisit + index ) == 1 && index == 2){
                        /* Es una forma fea de parar los partidos;  debido a la suma de index sale de l range, por lo que he tenido que poner parches de flags y condicionales para saber pararlo*/
                        switch (flag){
                        case true: break
                        default: continue
                            
                        }
                    }
                    else if flag == true {break}
                }
                print(index)
                index += 1
                print("\(index)  +1")
            }
        default:
            print("¡ 4 equipos!")
        }
    }
}

let groupA = GroupWorldCup(group: "A", player: qatarParticipants22)

groupA.choosePlayersToPlay()

