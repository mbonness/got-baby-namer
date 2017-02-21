//
//  BabyNameFactory.swift
//  BabyNamer
//
//  Created by Matt Bonness on 1/24/17.
//  Copyright © 2017 Motorola Solutions Inc. All rights reserved.
//

import Foundation

class BabyNameFactory {
    var babyNames = [BabyName]()
    
    init() {
        babyNames.append(BabyName(name: "Arya", gender: .Female))
        babyNames.append(BabyName(name: "Bronn", gender: .Male))
        babyNames.append(BabyName(name: "Cersei", gender: .Female))
        babyNames.append(BabyName(name: "Daenerys", gender: .Female))
        babyNames.append(BabyName(name: "Hodor", gender: .Male))
        babyNames.append(BabyName(name: "Jaime", gender: .Female))
        babyNames.append(BabyName(name: "Jon", gender: .Male))
        babyNames.append(BabyName(name: "Tyrion", gender: .Male))
        babyNames.append(BabyName(name: "Ygritte", gender: .Female))
    }
    
    func generateNameForGender(gender: Gender) -> BabyName? {
        // code here to randomly select name for specified gender
        var f = 0, i = 0, m = 0, ind = 0
        for bn in babyNames {
            if bn.gender == .Male {
                m += 1
            } else if bn.gender == .Female {
                f += 1
            }
        }
        
        switch gender {
            
        case .Male:
            let index = Int(arc4random_uniform(UInt32(m)))
            for bn in babyNames {
                if bn.gender == .Male {
                    if(i == index) {
                        return BabyName.init(name: babyNames[ind].getName()!, gender: babyNames[ind].getGender()!)
                    }
                    i += 1
                }
                ind += 1
            }
            break
        case .Female:
            let index = Int(arc4random_uniform(UInt32(f)))
            for bn in babyNames {
                if bn.gender == .Female {
                    if(i == index) {
                        return BabyName.init(name: babyNames[ind].getName()!, gender: babyNames[ind].getGender()!)
                    }
                    i += 1
                }
                ind += 1
            }
            break
        case .Unknown:
            return nil

        }
        return nil
    }
}
