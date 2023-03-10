//
//  Firebase_Service.swift
//  Emulator_Techne
//
//  Created by Caley Hamilton on 3/10/23.
//

import Foundation

import FirebaseFirestore
import Foundation

struct Dummy_Data: Codable{
    var dummy_variable_1: String
    var dummy_variable_2: Int
}

class Firebase_Service: ObservableObject{
    
    let database = Firestore.firestore()
    @Published var dummy_data_list: [Dummy_Data] = []
    
    func get_dummy_data(){
        database.collection("Topics").getDocuments { [unowned self] query_snapshot, thrown_error in
            var fetched_data = [Dummy_Data]()
            for document in query_snapshot!.documents{
                let a = document.data()["var1"] as! String
                let b = document.data()["var2"] as! Int
                fetched_data.append(Dummy_Data(dummy_variable_1: a, dummy_variable_2: b))
            }
            self.dummy_data_list = fetched_data
            
            print("\n", "FETCHED DATA Count IS: ", self.dummy_data_list.count, "\n")
        }
    }
    
    func add_data(){
        let data_to_add = [
            "var1": "bar",
            "var2": 70
        ] as [String : Any]
        database.collection("Topics").addDocument(data: data_to_add){ thrown_error in
            if thrown_error != nil{
                fatalError("UNABLE TO ADD THE FOLLOWING DATA:\n\(data_to_add)\n")
            }
        }
        print("SUCCESSFULLY ADDED \n\(data_to_add)\n TO THE Topics COLLECTION!!!!")
    }
    
}
