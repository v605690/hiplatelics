//
//  FileManager.swift
//  Hiplatelics
//
//  Created by patelpra on 5/22/23.
//

import Foundation

public extension FileManager {
  static var documentsDirectoryURL: URL {
    return `default`.urls(for: .documentDirectory, in: .userDomainMask)[0]
  }
}
