// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADENVIRONMENTDATA_H
#define FBADENVIRONMENTDATA_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FBAdBidPayload;
@class FBAdExtraHint;
@class FBAdPlacementDefinition;

@interface FBAdEnvironmentData : NSObject

@property (copy, nonatomic) NSString *placementID; // ivar: _placementID
@property (retain, nonatomic) FBAdBidPayload *bidPayload; // ivar: _bidPayload
@property (nonatomic) NSInteger placementType; // ivar: _placementType
@property (nonatomic) FBAdSize adSize; // ivar: _adSize
@property (nonatomic) NSInteger templateId; // ivar: _templateId
@property (nonatomic) NSUInteger numAdsRequested; // ivar: _numAdsRequested
@property (nonatomic) CGSize adViewInitSize; // ivar: _adViewInitSize
@property (nonatomic) NSInteger initOrientation; // ivar: _initOrientation
@property (retain, nonatomic) FBAdExtraHint *extraHint; // ivar: _extraHint
@property (nonatomic) NSUInteger podPositionInternal; // ivar: _podPositionInternal
@property (retain, nonatomic) FBAdPlacementDefinition *placementDefinition; // ivar: _placementDefinition
@property (readonly, copy, nonatomic) NSDictionary *adRequestParameters;
@property (nonatomic) NSUInteger podPosition; // ivar: _podPosition
@property (nonatomic) BOOL retryForPodPosition; // ivar: _retryForPodPosition
@property (readonly, nonatomic, getter=isValidDefinition) BOOL validDefinition; // ivar: _validDefinition
@property (readonly, nonatomic, getter=isValidPlacementId) BOOL validPlacementId; // ivar: _validPlacementId


-(id)initWithPlacementId:(id)arg0 placementType:(NSInteger)arg1 templateID:(NSInteger)arg2 adSize:(struct FBAdSize )arg3 bidPayload:(id)arg4 extraHint:(id)arg5 ;
-(id)initWithPlacementId:(id)arg0 placementType:(NSInteger)arg1 templateID:(NSInteger)arg2 adSize:(struct FBAdSize )arg3 numAdsRequested:(NSUInteger)arg4 extraHint:(id)arg5 ;
-(id)initWithPlacementId:(id)arg0 placementType:(NSInteger)arg1 templateID:(NSInteger)arg2 adSize:(struct FBAdSize )arg3 numAdsRequested:(NSUInteger)arg4 bidPayload:(id)arg5 extraHint:(id)arg6 ;
-(id)initInternalWithPlacementId:(id)arg0 publisherId:(id)arg1 placementType:(NSInteger)arg2 templateID:(NSInteger)arg3 adSize:(struct FBAdSize )arg4 numAdsRequested:(NSUInteger)arg5 bidPayload:(id)arg6 extraHint:(id)arg7 ;
-(BOOL)hasValidDefinition;
+(void)initialize;
+(id)staticEnvironmentParamsEncoded;
+(id)shortEnvironmentData;
+(id)staticEnvironmentData;


@end


#endif