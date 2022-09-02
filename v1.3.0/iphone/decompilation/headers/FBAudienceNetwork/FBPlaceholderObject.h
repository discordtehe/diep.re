// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBPLACEHOLDEROBJECT_H
#define FBPLACEHOLDEROBJECT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FBAdCache;
@class FBPlaceholderObject;

@interface FBPlaceholderObject : NSObject

@property (retain, nonatomic) NSOperationQueue *underlyingQueue; // ivar: _underlyingQueue
@property (retain, nonatomic) id *key; // ivar: _key
@property (copy, nonatomic) NSURL *url; // ivar: _url
@property (weak, nonatomic) FBAdCache *cache; // ivar: _cache
@property (nonatomic) NSInteger fetchType; // ivar: _fetchType
@property NSInteger retriesLeft; // ivar: _retriesLeft
@property (nonatomic, getter=isFetchedResource) BOOL fetchedResource; // ivar: _fetchedResource
@property (retain, nonatomic) FBPlaceholderObject *persistPlaceholder; // ivar: _persistPlaceholder
@property (retain, nonatomic) NSBlockOperation *fetchResourceOperation; // ivar: _fetchResourceOperation


-(id)initWithKey:(id)arg0 withURL:(id)arg1 withFetchType:(NSInteger)arg2 withCache:(id)arg3 ;
-(void)cleanupPlaceholder;
-(void)addCallback:(id)arg0 ;
-(id)fetchResourceBlock;
-(void)fetchResource;
+(void)initialize;


@end


#endif