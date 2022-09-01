// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISMUTABLEORDEREDDICTIONARY_H
#define ISMUTABLEORDEREDDICTIONARY_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface ISMutableOrderedDictionary : NSObject

@property (retain) NSMutableArray *keys; // ivar: _keys
@property (retain) NSMutableDictionary *dictionary; // ivar: _dictionary
@property (readonly, copy) NSArray *allKeys;


-(id)init;
-(id)objectForKey:(id)arg0 ;
-(void)setObject:(id)arg0 forKey:(id)arg1 ;


@end


#endif