// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TROBJECTSTORE_H
#define TROBJECTSTORE_H


#import <Foundation/Foundation.h>


@interface TRObjectStore : NSObject



+(id)retrieveObjectForKey:(id)arg0 ;
+(void)storeObject:(id)arg0 forKey:(id)arg1 ;
+(void)removeObjectForAllKeys;
+(void)removeObjectForKey:(id)arg0 ;


@end


#endif