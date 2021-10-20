//
//  TarifModel.swift
//  Ussd
//
//  Created by 1 on 19/10/21.
//

import UIKit

struct TarifModel {
    let sizeOfMegabyt: String
    let costOfMegabyt: String

}
struct TarifData {
    
    static let tarifData: [TarifModel] = [
    
        TarifModel(sizeOfMegabyt: "1000 мб", costOfMegabyt: "Цена: 10 000 sumСрок действия: 30 дней Код: *101*1000# "),
        TarifModel(sizeOfMegabyt: "1000 мб", costOfMegabyt: "Цена: 10 000 sumСрок действия: 30 дней Код: *101*1000# "),
        TarifModel(sizeOfMegabyt: "1000 мб", costOfMegabyt: "Цена: 10 000 sumСрок действия: 30 дней Код: *101*1000# "),
        TarifModel(sizeOfMegabyt: "1000 мб", costOfMegabyt: "Цена: 10 000 sumСрок действия: 30 дней Код: *101*1000# "),


        
    ]
}

