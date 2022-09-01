// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPMEMORYCACHE_H
#define MPMEMORYCACHE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol NSCacheDelegate;

@interface MPMemoryCache : NSObject <NSCacheDelegate>



@property (retain, nonatomic) NSCache *memcache; // ivar: _memcache
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)imageForKey:(id)arg0 ;
-(id)init;
-(id)dataForKey:(id)arg0 ;
-(void)setData:(id)arg0 forKey:(id)arg1 ;
-(void)cache:(id)arg0 willEvictObject:(id)arg1 ;
+(id)sharedInstance;


@end


#endif