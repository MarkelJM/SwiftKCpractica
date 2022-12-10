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

///CREAMOS PLANTILLA DE LAS SELECCIONES 32. PLANTILLAS

let paisesBajosList  = [Member.coach("Van der Poel"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let senegalList  = [Member.coach("Rene"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let ecuadorList  = [Member.coach("andres"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let qatarList  = [Member.coach("XXX"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let inglaterraLiest  = [Member.coach("Michael"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let usaList  = [Member.coach("Jerry"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let iranList  = [Member.coach("Fahmad"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let galesList  = [Member.coach("Gareth"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let poloniaList  = [Member.coach("Michel"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let argentinaLis  = [Member.coach("rene"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let mexicoList  = [Member.coach("andres"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let arabiasaudiList  = [Member.coach("Ale"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let dinamarcaList  = [Member.coach("gabriel"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let franciaList  = [Member.coach("rene"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let australiaList  = [Member.coach("andres"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let tunezList  = [Member.coach("paco"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let japonList  = [Member.coach("Van der Poel"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let españaList  = [Member.coach("Rene"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let alemaniaList  = [Member.coach("andres"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let costaricaList  = [Member.coach("XXX"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let marruecosList  = [Member.coach("Michael"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let croaciaList  = [Member.coach("Jerry"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let belgicaList  = [Member.coach("Fahmad"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let canadaList  = [Member.coach("Gareth"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let brazilList  = [Member.coach("Michel"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let suizaList  = [Member.coach("rene"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let camerunList  = [Member.coach("andres"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let serbiaList  = [Member.coach("Ale"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let portugalList  = [Member.coach("gabriel"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let coreadelsurList  = [Member.coach("rene"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let uruguayList  = [Member.coach("andres"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]
let ghanaList  = [Member.coach("paco"), Member.staff("staff"), Member.player("player1"),Member.player("player2"),Member.player("player3"),Member.player("player4")]

///CREAMOS  LOS OBJETOS DE CADA NACION

let paisesbajosTeam = NationalTeam(name : "Países Bajor", plantilla : paisesBajosList)
let senegalTeam = NationalTeam(name : "Senegal", plantilla : senegalList)
let ecuadorTeam = NationalTeam(name : "Ecuador", plantilla : ecuadorList)
let qatarTeam = NationalTeam(name : "Qatar", plantilla : qatarList)
let inglaterraTeam = NationalTeam(name : "Inglaterra", plantilla : inglaterraLiest)
let usaTeam = NationalTeam(name : "USA", plantilla : usaList)
let iranTeam = NationalTeam(name : "Irán", plantilla : iranList)
let galesTeam = NationalTeam(name : "Gales", plantilla : galesList)
let poloniaTeam = NationalTeam(name : "Polonia", plantilla : poloniaList)
let argentinaTeam = NationalTeam(name : "Argentina", plantilla : argentinaLis)
let mexicoTeam = NationalTeam(name : "Mexico", plantilla : mexicoList)
let arabiasaudiTeam = NationalTeam(name : "Arabia Saudí", plantilla : arabiasaudiList)
let franciaTeam = NationalTeam(name : "Francia", plantilla : franciaList)
let australiaTeam = NationalTeam(name : "Australia", plantilla : australiaList)
let tunezTeam = NationalTeam(name : "Túnez", plantilla : tunezList)
let dinamarcaTeam = NationalTeam(name : "Dinamarca", plantilla : dinamarcaList)
let japonTeam = NationalTeam(name : "Japón", plantilla : japonList)
let españaTeam = NationalTeam(name : "España", plantilla : españaList)
let alemaniaTeam = NationalTeam(name : "Alemania", plantilla : alemaniaList)
let costaricaTeam = NationalTeam(name : "Costa Rica", plantilla : costaricaList)
let marruecosTeam = NationalTeam(name : "Marruecos", plantilla : marruecosList)
let croaciaTeam = NationalTeam(name : "Croacia", plantilla : croaciaList)
let belgicaTeam = NationalTeam(name : "Bélgica", plantilla : belgicaList)
let canadaTeam = NationalTeam(name : "Canada", plantilla : canadaList)
let brazilTeam = NationalTeam(name : "Brazil", plantilla : brazilList)
let suizaTeam = NationalTeam(name : "Suiza", plantilla : suizaList)
let camerunTeam = NationalTeam(name : "Camerún", plantilla : camerunList)
let serbiaTeam = NationalTeam(name : "Serbia", plantilla : serbiaList)
let portugalTeam = NationalTeam(name : "Portugal", plantilla : portugalList)
let cordeadelsurTeam = NationalTeam(name : "Corea del Sur", plantilla : coreadelsurList)
let uruguayTeam = NationalTeam(name : "Uruguay", plantilla : uruguayList)
let ghanaTeam = NationalTeam(name : "Ghana", plantilla : ghanaList)

///CREAMOS LA LISTA CON TODOS LOS PARTICIPANTES

let qatarParticipants22 : [NationalTeam] = [paisesbajosTeam, senegalTeam, ecuadorTeam, qatarTeam, inglaterraTeam,usaTeam, iranTeam, galesTeam, poloniaTeam, argentinaTeam, mexicoTeam, arabiasaudiTeam, franciaTeam, australiaTeam, tunezTeam, dinamarcaTeam, japonTeam, españaTeam, alemaniaTeam,costaricaTeam, marruecosTeam, croaciaTeam, belgicaTeam, canadaTeam,brazilTeam, suizaTeam, camerunTeam, serbiaTeam, portugalTeam, cordeadelsurTeam, uruguayTeam,ghanaTeam]
    
//6. EJERCICIO
/* RECRAREMOS EL MUNDIAL DE QATAR EN LA CLASE WorldCup*/
print(" Qatar World Cuo 2022")
    




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
        print("create clasification dentro")
        for initialPos in 0...teamAmount {
            clasificationGroup[initialPos] = 0

        }
        print("create clasification fuera")
        print("\(clasificationGroup ) el grupo de ahora es este PRUEBA")
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
                print("partidos grpo dentro")
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
                print("partidos grpo dentro")
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
    print("continue  2 dentro")
    for i in 0...number{
        /* como en el mundial se clasifican 2 equipos por grupo seria sificiente poner  0...2, pero estas funciones pueden servir para la clasificatoria al mundial y como desconozco guantos grupos pasan lo pongo como eleccionable. SI pusiera un número mágico sería más rápido*/
        element  = localizador(puntos: points, valor: valuesListSort[i], lista: avoidElementTeams)
        avoidElementTeams.append(element)
        classificatedList.append(players[element])
        print(classificatedList[i].name, " \(i) equipo")
    
    }
    print("continue  2 fuera")

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



class WorldCup {
    var participants: [NationalTeam] = []
    let alphabete : [String] = ["A", "B", "C", "D", "E", "F", "G","H","I","J", "K", "L", "M","N", "Ñ", "O", "P","Q","R","S","T", "U","V", "Y","Z"]
    
    init(participants : [NationalTeam]){
        self.participants = participants
    }
    
    func dividirGrupo ( cantidad miembros : Int) -> [[NationalTeam]] {
        var index :Int = 0
        var amount : Int = 7 /* cantidad de grupos totales - 1 */
        var groupNumber : Int = miembros - 1
        var mainGroups : [[NationalTeam]] = [ ]
        var groups : [NationalTeam] = [ ]
        for _ in 1...amount{
            print("1")
            for num in 0...groupNumber{
                print("2")
                groups.append(self.participants[num + index])
            }
            index += 4
            mainGroups.append(groups)
        }
        return mainGroups
    }
    //func play()-> [[NationalTeam]]{
        /*
        var classificatedTeams : [[NationalTeam]] = [ ]/* para saber quienes se clasifican*/
        var organizeGroups : [[NationalTeam]] = dividirGrupo(cantidad: 4)/* ejecutar la division de grupos(van en orden de introduccion)*/
        /* primero va la fase de grupo*/
        
        //A
        let groupA = GroupWorldCup(group: "A" , player: organizeGroups[0])
        let obtainClassificationA = groupA.playGroupWC()
        let nextLevelA = continueWC(players: obtainClassificationA.0, points: obtainClassificationA.1, toNext: 2)
        classificatedTeams.append(nextLevelA)
        print(nextLevelA)
        //B
        let groupB = GroupWorldCup(group: "B" , player: organizeGroups[1])
        let obtainClassificationB : ([NationalTeam],[Int:Int]) = groupB.playGroupWC()
        let nextLevelB = continueWC(players: obtainClassificationB.0, points: obtainClassificationB.1, toNext: 2)
        classificatedTeams.append(nextLevelB)
        print(nextLevelB)
        
        //C
        let groupC = GroupWorldCup(group: "C" , player: organizeGroups[2])
        let obtainClassificationC = groupC.playGroupWC()
        let nextLevelC = continueWC(players: obtainClassificationC.0, points: obtainClassificationC.1, toNext: 2)
        classificatedTeams.append(nextLevelC)
        print(nextLevelC)
        //D
        let groupD = GroupWorldCup(group: "D" , player: organizeGroups[3])
        let obtainClassificationD = groupD.playGroupWC()
        let nextLevelD = continueWC(players: obtainClassificationD.0, points: obtainClassificationD.1, toNext: 2)
        classificatedTeams.append(nextLevelD)
        print(nextLevelD)
        //E
        let groupE = GroupWorldCup(group: "E" , player: organizeGroups[4])
        let obtainClassificationE = groupE.playGroupWC()
        let nextLevelE = continueWC(players: obtainClassificationE.0, points: obtainClassificationE.1, toNext: 2)
        classificatedTeams.append(nextLevelE)
        print(nextLevelE)
        //F
        let groupF = GroupWorldCup(group: "F" , player: organizeGroups[5])
        let obtainClassificationF = groupF.playGroupWC()
        let nextLevelF = continueWC(players: obtainClassificationF.0, points: obtainClassificationF.1, toNext: 2)
        classificatedTeams.append(nextLevelF)
        print(nextLevelF)
        //G
        let groupG = GroupWorldCup(group: "G" , player: organizeGroups[6])
        let obtainClassificationG = groupG.playGroupWC()
        let nextLevelG = continueWC(players: obtainClassificationG.0, points: obtainClassificationG.1, toNext: 2)
        classificatedTeams.append(nextLevelG)
        print(nextLevelG)
        //H
        let groupH = GroupWorldCup(group: "H" , player: organizeGroups[7])
        let obtainClassificationH = groupH.playGroupWC()
        let nextLevelH = continueWC(players: obtainClassificationH.0, points: obtainClassificationH.1, toNext: 2)
        classificatedTeams.append(nextLevelH)
        print(nextLevelH)
        */
        
            
        
        
       // return classificatedTeams
  //  }
}

/*
let mundial = WorldCup(participants: qatarParticipants22)
mundial.play()
*/

///////////////////////////////////PRUEBA:
func dividirPrueba (equipo: [NationalTeam], cantidad miembros : Int) -> [[NationalTeam]] {
    var participants = equipo
    var index :Int = 0
    var amount : Int = 8 /* cantidad de grupos totales - 1 */
    var groupNumber : Int = miembros - 1
    var mainGroups : [[NationalTeam]] = [ ]
    print("estamos aqui")
    for i in 1...amount{
        print("\(i)  analizando los I")
        var groups : [NationalTeam] = [ ]
        for num in 0...groupNumber{
            groups.append(participants[num + index])
        }
        print("\(i)  analizando los I")

        index += 4
        mainGroups.append(groups)
    }
    return mainGroups
}

/*
var classificatedTeams : [[NationalTeam]] = [ ]/* para saber quienes se clasifican*/
var organizeGroups = WorldCup(participants: qatarParticipants22)
var dividedGroups  : [[NationalTeam]] = organizeGroups.dividirGrupo(cantidad: 4)
*/

//PRUEBA!!!!!!!!!!!
var classificatedTeams : [[NationalTeam]] = [ ]/* para saber quienes se clasifican*/
var dividedGroups  : [[NationalTeam]] = dividirPrueba(equipo: qatarParticipants22, cantidad: 4)
/*
//A
let groupA = GroupWorldCup(group: "A" , player: dividedGroups[0])
let obtainClassificationA :([NationalTeam], [Int:Int]) = groupA.playGroupWC()
let nextLevelA : [NationalTeam ] = continueWC(players: obtainClassificationA.0, points: obtainClassificationA.1, toNext: 2)
classificatedTeams.append(nextLevelA)
print(nextLevelA)
print(classificatedTeams)//B
let groupB = GroupWorldCup(group: "B" , player: dividedGroups[1])
let obtainClassificationB : ([NationalTeam],[Int:Int]) = groupB.playGroupWC()
let nextLevelB = continueWC(players: obtainClassificationB.0, points: obtainClassificationB.1, toNext: 2)
classificatedTeams.append(nextLevelB)
 
print(nextLevelB)
 
print(classificatedTeams)

*/






//A
let groupA = GroupWorldCup(group: "A" , player: dividedGroups[0])
let obtainClassificationA :([NationalTeam], [Int:Int]) = groupA.playGroupWC()
let nextLevelA : [NationalTeam ] = continueWC(players: obtainClassificationA.0, points: obtainClassificationA.1, toNext: 2)
classificatedTeams.append(nextLevelA)
print(nextLevelA)
//B
let groupB = GroupWorldCup(group: "B" , player: dividedGroups[1])
let obtainClassificationB : ([NationalTeam],[Int:Int]) = groupB.playGroupWC()
let nextLevelB = continueWC(players: obtainClassificationB.0, points: obtainClassificationB.1, toNext: 2)
classificatedTeams.append(nextLevelB)
print(nextLevelB)

//C
let groupC = GroupWorldCup(group: "C" , player: dividedGroups[2])
let obtainClassificationC = groupC.playGroupWC()
let nextLevelC = continueWC(players: obtainClassificationC.0, points: obtainClassificationC.1, toNext: 2)
classificatedTeams.append(nextLevelC)
print(nextLevelC)
//D
let groupD = GroupWorldCup(group: "D" , player: dividedGroups[3])
let obtainClassificationD = groupD.playGroupWC()
let nextLevelD = continueWC(players: obtainClassificationD.0, points: obtainClassificationD.1, toNext: 2)
classificatedTeams.append(nextLevelD)
print(nextLevelD)
//E
let groupE = GroupWorldCup(group: "E" , player: dividedGroups[4])
let obtainClassificationE = groupE.playGroupWC()
let nextLevelE = continueWC(players: obtainClassificationE.0, points: obtainClassificationE.1, toNext: 2)
classificatedTeams.append(nextLevelE)
print(nextLevelE)
//F
let groupF = GroupWorldCup(group: "F" , player: dividedGroups[5])
let obtainClassificationF = groupF.playGroupWC()
let nextLevelF = continueWC(players: obtainClassificationF.0, points: obtainClassificationF.1, toNext: 2)
classificatedTeams.append(nextLevelF)
print(nextLevelF)
//G
let groupG = GroupWorldCup(group: "G" , player: dividedGroups[6])
let obtainClassificationG = groupG.playGroupWC()
let nextLevelG = continueWC(players: obtainClassificationG.0, points: obtainClassificationG.1, toNext: 2)
classificatedTeams.append(nextLevelG)
print(nextLevelG)
print(classificatedTeams)
//H
print("grupo H inicio")
let groupH = GroupWorldCup(group: "H" , player: dividedGroups[7])

let obtainClassificationH = groupH.playGroupWC()
let nextLevelH = continueWC(players: obtainClassificationH.0, points: obtainClassificationH.1, toNext: 2)
classificatedTeams.append(nextLevelH)
print(nextLevelH)
print(classificatedTeams)


/*
let qatarParticipants22_prueba : [NationalTeam] = [paisesbajosTeam,senegalTeam,ecuadorTeam, qatarTeam]
let worldCupqatar22 = WorldCup(participants : qatarParticipants22_prueba)


let groupA_prueba = GroupWorldCup(group: "A", player: qatarParticipants22_prueba)

let  groupAresults_prueba :([NationalTeam],[Int:Int]) = groupA_prueba.playGroupWC()
let leaders : [NationalTeam] = continueWC(players: groupAresults_prueba.0, points: groupAresults_prueba.1, toNext: 2)
 */


