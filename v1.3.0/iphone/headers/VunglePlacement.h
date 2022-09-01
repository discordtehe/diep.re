// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEPLACEMENT_H
#define VUNGLEPLACEMENT_H


#import <Foundation/Foundation.h>

@class VungleAd;
@protocol NSCoding;
@protocol NSCopying;
@protocol VNGPersistable;

@interface VunglePlacement : NSObject <NSCoding, NSCopying, VNGPersistable>



@property (copy, nonatomic) NSString *referenceID; // ivar: _referenceID
@property (copy, nonatomic) NSString *uniqueID; // ivar: _uniqueID
@property (getter=isCacheable) BOOL cacheable; // ivar: _cacheable
@property (getter=isIncentivized) BOOL incentivized; // ivar: _incentivized
@property (retain, nonatomic) VungleAd *adUnit; // ivar: _adUnit
@property (nonatomic) NSInteger state; // ivar: _state
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithReferenceID:(id)arg0 uniqueID:(id)arg1 cacheable:(BOOL)arg2 incentivized:(BOOL)arg3 ;
-(id)initWithReferenceID:(id)arg0 uniqueID:(id)arg1 ;
-(BOOL)isEqualToPlacement:(id)arg0 ;
-(BOOL)isEqual:(id)arg0 ;
-(void)encodeWithCoder:(id)arg0 ;
-(id)initWithCoder:(id)arg0 ;
-(id)copyWithZone:(struct _NSZone *)arg0 ;
-(NSInteger)persistenceChannel;
-(id)persistenceCategory;
-(id)persistenceKey;
+(id)placementWithReferenceID:(id)arg0 uniqueID:(id)arg1 ;
+(id)placementWithReferenceID:(id)arg0 uniqueID:(id)arg1 cacheable:(BOOL)arg2 incentivized:(BOOL)arg3 ;
+(NSInteger)channel;
+(id)category;
+(id)sortPlacementsByAutoCacheableStatus:(id)arg0 ;


@end


#endif