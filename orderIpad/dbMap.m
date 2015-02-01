//
//  dbMap.m
//  SlidingPanelControllerStoryboard
//
//  Created by 金 秋瑞 on 5/6/14.
//  Copyright (c) 2014 Sébastien MICHOY. All rights reserved.
//

#import "dbMap.h"
#import "DataBase.h"

@implementation dbMap

+ (NSMutableArray *) findAll{
	PLSqliteDatabase *dataBase = [DataBase setup];
	
	id<PLResultSet> rs;
	rs = [dataBase executeQuery:@"SELECT * FROM StoreLocation"];
	
	//定义一个数组存放所有书籍的信息
	NSMutableArray *allLocation = [[NSMutableArray alloc] init];
	
	//把rs中的数据库信息遍历到books数组
	while ([rs next]) {
		NSString *ID = [rs objectForColumn:@"ID"];
		NSString *name = [rs objectForColumn:@"Name"];
		NSNumber *latitude = [rs objectForColumn:@"Latitude"];
        NSNumber *longtitude = [rs objectForColumn:@"Longtitude"];
        NSString *address = [rs objectForColumn:@"Address"];
        NSString *status = [rs objectForColumn:@"Status"];
        NSString *open24 = [rs objectForColumn:@"Open24"];
        NSString *phone = [rs objectForColumn:@"Phone"];
        NSString *features = [rs objectForColumn:@"Features"];
        NSString *storeID = [rs objectForColumn:@"StoreID"];
        NSString *pic = [rs objectForColumn:@"Pic"];
        
		//初始化book 存放到books里面
		dbMap *location = [[dbMap alloc] initWithID:ID name:name latitude:latitude longtitude:longtitude address:address status:status open24:open24 phone:phone features:features storeID:storeID pic:pic];
		[allLocation addObject:location];
        //		[Menu release];
	}
	//关闭数据库
	[rs close];
	
	return allLocation;
}
- (NSString *) ID
{
    return _id;
}
- (NSString *) name
{
    return _name;
}
- (NSNumber *) latitude
{
    return _latitude;
}
- (NSNumber *) longtitude
{
    return _longtitude;
}
- (NSString *) address
{
    return _address;
}
- (NSString *) status
{
    return _status;
}
- (NSString *) open24
{
    return _open24;
}
- (NSString *) phone
{
    return _phone;
}
- (NSString *) features;
{
    return _features;
}
- (NSString *) storeID
{
    return _storeID;
}
- (NSString *) pic
{
    return _pic;
}

- (id) initWithID:(NSString *) ID name:(NSString *) name latitude:(NSNumber *)latitude longtitude:(NSNumber *)longtitude address:(NSString *)address status:(NSString *) status open24:(NSString *) open24 phone: (NSString *) phone features: (NSString *) features  storeID: (NSString *) storeID  pic: (NSString *) pic
{
    _id = ID;
    _name = name;
    _latitude = latitude;
    _longtitude = longtitude;
    _address = address;
    _status = status;
    _open24 = open24;
    _phone = phone;
    _features = features;
    _storeID = storeID;
    _pic = pic;
    return self;
}

+ (int) createWithID:(NSString *) ID name:(NSString *) name latitude:(NSNumber *)latitude longtitude:(NSNumber *)longtitude address:(NSString *)address status:(NSString *) status open24:(NSString *) open24 phone: (NSString *) phone features: (NSString *) features  storeID: (NSString *) storeID
{
	PLSqliteDatabase *dataBase = [DataBase setup];
    
    BOOL bResult = [dataBase executeUpdate: @"INSERT INTO StoreLocation (ID, Name, latitude,longtitude,address,status,open24,phone,features,storeID,pic) VALUES (?,?,?,?,?,?,?,?,?,?,'defaultMap')",
                    ID,
                    name,
                    latitude,
                    longtitude,
                    address,
                    status,
                    open24,
                    phone,
                    features,
                    storeID
                    ];
	
	return bResult;
}
+ (int) update:(NSString *)ID withName:(NSString *)name address:(NSString *)address status:(NSString *) status open24:(NSString *) open24 phone: (NSString *) phone features: (NSString *) features  storeID: (NSString *) storeID{
	PLSqliteDatabase *dataBase = [DataBase setup];
    
    BOOL bResult = [dataBase executeUpdate: @"UPDATE StoreLocation SET name = ?, address = ?, status = ? , address = ? , open24 = ? , phone = ? , features = ?, storeID = ? where ID = ?",
                    name,
					address,
					status,
                    open24,
                    phone,
                    features,
                    storeID,
					ID];
	
	return bResult;
}

+ (int) delete:(NSString *) ID
{
	PLSqliteDatabase *dataBase = [DataBase setup];
	
	BOOL bResult = [dataBase executeUpdate:@"DELETE FROM StoreLocation WHERE ID = ?",
					ID];
	
	return bResult;
}
@end
