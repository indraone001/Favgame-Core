//
//  Results+Ext.swift
//  Favgame
//
//  Created by deri indrawan on 31/12/22.
//

import RealmSwift

public extension Results {

  func toArray<T>(ofType: T.Type) -> [T] {
    var array = [T]()
    for index in 0 ..< count {
      if let result = self[index] as? T {
        array.append(result)
      }
    }
    return array
  }

}
