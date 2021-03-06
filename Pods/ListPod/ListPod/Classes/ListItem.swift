//
//  ListItem.swift
//  ListPod
//
//  Created by Bruce on 2019/10/31.
//

import Foundation

@objcMembers public class ListItemOC: NSObject {

    let listItem: ListItem

    init(item: ListItem) {
        listItem = item
    }

    public var pId: Int {
        return listItem.id
    }
    public var title: String {
        return listItem.title
    }
}

struct ListItem {
    let id: Int
    let title: String
    
}

func makeItems() -> [ListItem] {
    return (0...20).map { (ele) -> ListItem in
        ListItem(id: ele, title: "I'm at \(ele) position")
    }
}

class ListViewModel {
    var items: [ListItem] = makeItems()
    private(set) lazy var cellModels: [ListCellModel] = {
        return self.items.map { return ListCellModel(item: $0) }
    }()
    
}

class ListCellModel {
    let title: NSAttributedString
    
    init(item: ListItem) {
        title = NSAttributedString(string: "\(item.id) \(item.title)", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16), NSAttributedString.Key.foregroundColor: UIColor.black])
    }
}
