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


    
    
//6. EJERCICIO
    
class WorldCup {
    var participants: [NationalTeam] = []
    
    init(participants : [NationalTeam]){
        self.participants = participants
    }
    
}



//7. EJERCICIO + 8.EJERCICIO(como una función dentro de la clase grupo)

class MatchOperation {
    var players : [NationalTeam]
    init(teams : [NationalTeam]){
        self.players = teams
    }
   
    
    func playMatch (local : Int, visit: Int) -> (Int, Int, Bool) {
        /* devolvemos una tupla con tres elementos el 1. ganador, 2. perdedor 3 si es empate sí o No*/
        
        let localPlayer : Int = local
        let visitPlayer : Int = visit
        let resultLocal = Int.random(in: 0...10)
        let resultVisit = Int.random(in: 0...10)
        var finalresulTuple : (Int, Int, Bool)
        print("\(self.players[localPlayer].name)  \(resultLocal) - \(resultVisit) \(self.players[visitPlayer].name)")
        if( (resultLocal - resultVisit) > 0 ){
            finalresulTuple = (localPlayer,visitPlayer, false)}
        else if( (resultLocal - resultVisit) < 0 ){
            finalresulTuple = (visitPlayer,localPlayer, false)}
        else {
            finalresulTuple = (localPlayer,visitPlayer, true)}
        return finalresulTuple
    }
}
class Points{
    var classification : [Int : Int ]
    var players : [NationalTeam]
    init(teams: [NationalTeam], classification : [Int:Int]){
        self.players = teams
        self.classification = classification
    }
    
    
    /* reparto de puntos; como no he conseguido declarar(no se porqué) un grupo con self que sería más fácil de actualizar
     tendré que darle el elemento clasificación al repartir puntos y devolve el mismo actualizado cada vez*/
    func givePoint (winner: Int, loser: Int, tie: Bool,  started : Bool) ->[Int: Int]{
        
        
        switch (started){
        case false: break
        case true:
            let empate : Bool = tie
            
            switch (empate){
            case true:
                self.classification[winner]! += 1; self.classification[loser]! += 1
                
            case false:
                self.classification[winner]! += 3 ; self.classification[loser]! += 0
            }
        }
        print(self.classification)
        return self.classification
    }
    func finalClassification() -> [Int:Int]{
        return self.classification
    }
}


class GroupWorldCup {
    var name : String
    var player : [NationalTeam]
    
    
    
    init(group letter: String ,player : [NationalTeam]){
        self.player = player
        self.name = letter
        
        
    }
       /*
     ///Mensaje: mi idea era hacer todo usando objetos NationalTeam. que son las selecciones, pero en la función de crear grupo me salta un error de no 'Hasable'-> cambio formato. Entonces todo será según la posición incial del equipo en la lista declarada en el init;
          Lo saco fuera como una clase
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
     */
    func createClassification( ) -> [ Int : Int]{
        /* creamos un diccionario con la lista de grupos que facilitamos en el init*/
        var clasificationGroup : [Int:Int] = [:]
        let initialPoint = 0
        var teamAmount : Int = (self.player.count) - 1
        for initialPos in 0...teamAmount {
            clasificationGroup[initialPos] = 0

        }
        return clasificationGroup
        
    }
    
    
    /* Método que se encarga del grupo. Selecciona los equipos y llama a matchy para obtener un resultado
     Para acabar se encargará llamar al reparto de puntos*/
    func playGroupWC () -> ([NationalTeam],[Int:Int]) {

        var groupclassification = Points(teams: self.player, classification: createClassification())
        groupclassification.givePoint(winner: 1, loser: 2, tie: false, started: false)
        //var groupPosition = up(winner: 1, loser: 2, tie: false, updateClassification: groupclassification, started: false)
        var gameMatch = MatchOperation(teams: self.player)
        var positionVisit : Int = 0
        switch(self.player.count){
        case 0...3 : print("deben ser 4 jugadores, declara de nuvo el grupo")/* para probar, con el default en última posicion suficiente*/
        case 4:
            var index : Int = 0 /* contador para que no se repitan los primeros equipos*/
            var flag : Bool = false /* para ser activado en un momento que saldrá "out of range" y que salte el primer segundo For e ire a al siguiente valor; en la segunda ocasión que vaya a saltar "out of range" saldrá del primer For; Ve los if, else if, else if de abajo*/
            for posLocal in 0..<3 {
                /* el loop for deberia de ser  for posLocal in 0..< ((self.player.count)-1) pero me da error
                 no interesa que llega al último equipo, ya ha jugado contra todos*/
                for posVisit in 1..<self.player.count{
                    positionVisit = posVisit + index
                    var result = gameMatch.playMatch(local: posLocal, visit: positionVisit)
                    groupclassification.givePoint(winner: result.0, loser: result.1, tie: result.2, started: true)
                    //givePoint(winner: result.0, loser: result.1, tie: result.2, updateClassification: groupPosition, started: true)
                    if (flag == false && (posVisit + index ) == 2 && index == 1) { flag = true }/*activa el flag*/
                    else if(flag == true  && (posVisit + index ) == 1 && index == 2){
                        /* Es una forma fea de parar los partidos;  debido a la suma de index sale de l range, por lo que he tenido que poner parches de flags y condicionales para saber pararlo*/
                        switch (flag){
                        case true: break/*para que salte este Foor y vaya a la penúltima selección*/
                        default: continue
                            
                        }
                    }
                    else if flag == true {break}/*salta del último valor y acaba*/
                }

                index += 1
            
            }
        default:
            print("¡ 4 equipos!")
        
        }
        print("Clasificación final: \(groupclassification.finalClassification())")
        return (self.player, groupclassification.finalClassification())
        
    }
    
}



func continueWC(players group : [NationalTeam],points classificationPoints : [Int:Int], toNext amount : Int)->[NationalTeam]{
    
    let players = group
    let points = classificationPoints
    let number = (amount - 1)
    var classificatedList : [NationalTeam] = []
    var valuesList = Array(points.values)
    var element : Int
    var avoidElementTeams : [Int] = [] /* ya que la funcion localizador de abajo no le importa si varios equipos tienen la puntuacion repetida, devolveria la primera: Ejemplo Si Argentina y Colombia tienen 6 puntos, devolvería dos veces Argentina. En esta aádiremos la posición de la lista  de equipos [NationalTeam], mediante un condiciaonal evitaremos repetir la posicion */
    var valuesListSort = valuesList.sorted(by: >)
    print(valuesListSort)
    for i in 0...number{
        /* como en el mundial se clasifican 2 equipos por grupo seria sificiente poner  0...2, pero estas funciones pueden servir para la clasificatoria al mundial y como desconozco guantos grupos pasan lo pongo como eleccionable. SI pusiera un número mágico sería más rápido*/
        element  = localizador(puntos: points, valor: valuesListSort[i], lista: avoidElementTeams)
        avoidElementTeams.append(element)
        classificatedList.append(players[element])
        print(classificatedList[i].name, " \(i) equipo")
        
    }
    
    func localizador(puntos: [Int: Int], valor : Int, lista : [Int]) -> (Int){
        var pos : Int = 0
        for(key, value) in puntos{
            if (valor == value && !lista.contains(key)){
                pos = key
            }
        }
        return pos
    }
    print(classificatedList[0].name, classificatedList[1].name)
    return classificatedList
    
    /* let valuesListSort = valuesList.sort(by: >)
    for num in points{
        switch(num){
        case let x where(valuesListSort[0] == num.value): continue
        }
    }*/
}

let colombiaList  = [Member.coach("gabriel"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let argentinaLis  = [Member.coach("rene"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let mexicoList  = [Member.coach("andres"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let chileList  = [Member.coach("paco"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
            
let colombiaTeam = NationalTeam(name : "Colombia", plantilla : colombiaList)
let argentinaTeam = NationalTeam(name : "Argentina", plantilla : colombiaList)
let mexicoTeam = NationalTeam(name : "Mexico", plantilla : colombiaList)
let chileTeam = NationalTeam(name : "Chile", plantilla : colombiaList)

let qatarParticipants22 : [NationalTeam] = [colombiaTeam, argentinaTeam, mexicoTeam, chileTeam]
let worldCupqatar22 = WorldCup(participants : qatarParticipants22)


let groupA = GroupWorldCup(group: "A", player: qatarParticipants22)

let  groupAresults :([NationalTeam],[Int:Int]) = groupA.playGroupWC()
let leaders : [NationalTeam] = continueWC(players: groupAresults.0, points: groupAresults.1, toNext: 2)

