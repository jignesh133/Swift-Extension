//
//  appConstants.swift
//  OrangeWill
//
//  Created by Hupp Technologies on 11/11/17.
//  Copyright © 2017 Hupp Technologies. All rights reserved.
//

import Foundation

class appConstants{
    
    static let refreshRoutesSubVC = "refreshRoutesSubVC"
    static var viewDismissType = EM_ViewDismissType.none
    static let refreshCustSubVC = "CUST_SUB_VC_REFRESH"
}

enum EM_ViewDismissType {
    case push,dismiss,none
}
enum Json_Result <T>{
    case Success(T)
    case Error(String)
}
enum Json_Upload_Result <T>{
    case UploadWithSuccess(T)
    case UploadWithError(String)
}

//MARK:- APIS SYNC VARIABLE
let API_SYNC_LIMIT:Int = 10

var API_SYNC_Customer_START_CNT:Int = 1
var API_SYNC_Supplier_START_CNT:Int = 1
var API_SYNC_Route_START_CNT:Int = 1
var API_SYNC_SalesRep_START_CNT:Int = 1
var API_SYNC_Order_START_CNT:Int = 1

//MARK:- LOCAL KEY FOR INTIAL SYNC
enum EM_API_sync_Keys:String {
    case intialSyncDone
    case custSynced
    case SuppSynced
    case routeSynced
    case salesRepSynced
    case orderSynced
    case cnt_CustSync
    case cnt_SuppSync
    case cnt_RouteSync
    case cnt_SelesRepSync
    case cnt_OrderSync
}

//MARK:- NOTIFICATION NAME
let NF_SHOW_FLASH_MESSAGE = "NF_SHOW_FLASH_MESSAGE"

let NF_UPDATE_COMMENT_MESSAGE = "NF_UPDATE_COMMENT_MESSAGE"

let NF_UPDATE_FLASH_MESSAGE = "NF_UPDATE_FLASH_MESSAGE"

let NF_UPDATE_ORDER = "NF_UPDATE_ORDER"
let NF_UPDATE_ORDER_WITH_NEWDATA = "NF_UPDATE_ORDER_WITH_NEWDATA"

let NF_CUST_TYPE_CHANGED = "NF_CUST_TYPE_CHANGED"
let NF_SUPP_TYPE_CHANGED = "NF_SUPP_TYPE_CHANGED"

let NF_UPDATE_Customer = "updateCustTable"

let NF_DISMISS = "NF_DISMISS"


let NF_UPDATE_Customer_WITH_NEWDATA = "updateCustTableWITH_NEWDATA"
let NF_UPDATE_SUPPLIER = "updateSupplierTable"
let NF_UPDATE_ROUTE = "updateRouteTable"
let NF_UPDATE_ROUTE_WITH_NEWDATA = "updateRouteTableWithNewData"
let NF_UPDATE_SALESRep = "updateSalesRepTable"

let GL_UPDATE_CUST_DATA = "GL_UPDATE_CUST_DATA"
let GL_UPDATE_SUP_DATA = "GL_UPDATE_SUP_DATA"

let NF_NEWACT_DISMISS = "NEWACT_DISMISS"

enum Em_NotificationObject {
    case insert,delete,none
}



