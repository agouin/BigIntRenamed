//
//  ExpModTest.swift
//  BigIntRenamedTests
//
//  Created by Leif Ibsen on 04/02/2019.
//

import XCTest

class ExpModTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test1() {
        XCTAssertEqual(BInt(3).expMod(BInt(7), BInt(1)), BInt(0))
        XCTAssertEqual(BInt(2).expMod(BInt(10), BInt(1000)), BInt(24))
    }
    
    func test2() {
        let a1 = BInt("43271512091896741409394736939900206368860872098952555939")!
        let x1 = BInt("42267688843543983783885633938053687583065584419295560555")!
        let m1 = BInt("65559338391610243479024015552681806795487318988418855174")!
        let mp1 = BInt("14708028296754883426561209612579760556999800024666797837")!
        XCTAssertEqual(a1.expMod(x1, m1), mp1)
        XCTAssertEqual(a1.expMod(-x1, m1), mp1.modInverse(m1))
        XCTAssertEqual((-a1).expMod(x1, m1), m1 - mp1)
        XCTAssertEqual((-a1).expMod(-x1, m1), (m1 - mp1).modInverse(m1))
        let a2 = BInt("9879959622001881798420480569351120749752891168795071469741009590796905186183625061410538508653929799901162907503196502223071902180994253404412067954774342232969326053454779870840130810532326017165678692636647404921424922403748460111140358572478743271512091896741409394736939900206368860872098952555939")!
        let x2 = BInt("4149842346989426807721754542711895351513161856205879655378968612408032038996656528445703209766166328006052965811745650295935314936056815509075542554308409615827636639641110901357012471113482422183741588797481891328204616583065067700486989814417842267688843543983783885633938053687583065584419295560555")!
        let m2 = BInt("10524302966485349118258764179820205386685991992586369700154893101599927732040662774460446149003080427232451962311367600902738242964142492968383265627950930467854069828393051189273332522792516344807937835132537814794042705435787095095919023768140765559338391610243479024015552681806795487318988418855174")!
        let mp2 = BInt("1122200972247120546333043544356752277213829455746835691791369400547247327000588079094470008395425401827849174141816902264513461023891163414270218627387835660351885298195540293936217720560009323739879363833688454142584347044964970051959361123182603999640496505409063560777205949747764493609693376510835")!
        XCTAssertEqual(a2.expMod(x2, m2), mp2)
        XCTAssertEqual(a2.expMod(-x2, m2), mp2.modInverse(m2))
        XCTAssertEqual((-a2).expMod(x2, m2), m2 - mp2)
        XCTAssertEqual((-a2).expMod(-x2, m2), (m2 - mp2).modInverse(m2))
        let a3 = BInt("2988348162058574136915891421498819466320163312926952423791023078876139")!
        let x3 = BInt("2351399303373464486466122544523690094744975233415544072992656881240319")!
        let m3 = BInt("10000000000000000000000000000000000000000")!
        let mp3 = BInt("1527229998585248450016808958343740453059")!
        XCTAssertEqual(a3.expMod(x3, m3), mp3)
        XCTAssertEqual(a3.expMod(-x3, m3), mp3.modInverse(m3))
        XCTAssertEqual((-a3).expMod(x3, m3), m3 - mp3)
        XCTAssertEqual((-a3).expMod(-x3, m3), (m3 - mp3).modInverse(m3))
    }

    func test3() {
        XCTAssertEqual(BInt(-2).expMod(BInt(0), BInt(11)), BInt(1))
        XCTAssertEqual(BInt(2).expMod(BInt(0), BInt(11)), BInt(1))
        XCTAssertEqual(BInt(1).expMod(BInt(2), BInt(11)), BInt(1))
        XCTAssertEqual(BInt(1).expMod(BInt(-2), BInt(11)), BInt(1))
        XCTAssertEqual(BInt(-2).expMod(BInt(-3), BInt(11)), BInt(4))
        XCTAssertEqual(BInt(-11).expMod(BInt(2), BInt(11)), BInt(0))
        XCTAssertEqual(BInt(2).expMod(BInt(5), BInt(11)), BInt(10))
        XCTAssertEqual(BInt(2).expMod(BInt(-5), BInt(11)), BInt(10))
        XCTAssertEqual(BInt(2).expMod(BInt(4), BInt(11)), BInt(5))
        XCTAssertEqual(BInt(2).expMod(BInt(-4), BInt(11)), BInt(9))
        XCTAssertEqual(BInt(-2).expMod(BInt(5), BInt(11)), BInt(1))
        XCTAssertEqual(BInt(-2).expMod(BInt(-5), BInt(11)), BInt(1))
        XCTAssertEqual(BInt(-2).expMod(BInt(4), BInt(11)), BInt(5))
        XCTAssertEqual(BInt(-2).expMod(BInt(-4), BInt(11)), BInt(9))
        XCTAssertEqual(BInt(0).expMod(BInt(5), BInt(11)), BInt(0))
        XCTAssertEqual(BInt(0).expMod(BInt(4), BInt(11)), BInt(0))
    }

}
