//
//  dbCategory.h
//  SlidingPanelControllerStoryboard
//
//  Created by 金 秋瑞 on 5/5/14.
//  Copyright (c) 2014 Sébastien MICHOY. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface dbCategory : NSObject{
	NSString * _id;
	NSString *_name;
	NSString *_pic;
    NSString *_stroe;
}

+ (NSMutableArray *) findAll;
+ (NSString *)findByID:(NSString *)ID;
- (id) initWithID:(NSString *) ID name:(NSString *) name pic:(NSString *)pic store:(NSString *)store;
- (NSString *)name;
- (NSString *)ID;
- (NSString *)pic;
- (NSString *)store;
@end
