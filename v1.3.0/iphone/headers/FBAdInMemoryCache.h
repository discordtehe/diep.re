// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADINMEMORYCACHE_H
#define FBADINMEMORYCACHE_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FBAdInMemoryCache : NSObject {
    NSObject<OS_dispatch_queue> *_cacheQueue;
}


@property (retain, nonatomic) NSMutableDictionary *storage; // ivar: _storage
@property (readonly, nonatomic) NSUInteger countLimit; // ivar: _countLimit
@property (readonly, nonatomic) NSUInteger totalCostLimit; // ivar: _totalCostLimit


-(id)init;
-(id)initWithCountLimit:(NSUInteger)arg0 totalCostLimit:(NSUInteger)arg1 ;
-(id)objectForKey:(id)arg0 ;
-(NSUInteger)count;
-(void)setObject:(id)arg0 forKey:(id)arg1 ;
-(void)setObject:(id)arg0 forKey:(id)arg1 cost:(NSUInteger)arg2 ;
-(void)removeObjectForKey:(id)arg0 ;
-(void)removeAllObjects;


@end


#endif