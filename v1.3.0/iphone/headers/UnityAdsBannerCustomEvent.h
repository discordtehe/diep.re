// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UNITYADSBANNERCUSTOMEVENT_H
#define UNITYADSBANNERCUSTOMEVENT_H


#import <Foundation/Foundation.h>

@class MPBannerCustomEvent;
@protocol UnityAdsBannerDelegate;

@interface UnityAdsBannerCustomEvent : MPBannerCustomEvent <UnityAdsBannerDelegate>



@property (retain, nonatomic) NSString *placementId; // ivar: _placementId
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)dealloc;
-(void)requestAdWithSize:(struct CGSize )arg0 customEventInfo:(id)arg1 ;
-(id)createErrorWith:(id)arg0 andReason:(id)arg1 andSuggestion:(id)arg2 ;
-(void)unityAdsBannerDidLoad:(id)arg0 view:(id)arg1 ;
-(void)unityAdsBannerDidUnload:(id)arg0 ;
-(void)unityAdsBannerDidShow:(id)arg0 ;
-(void)unityAdsBannerDidHide:(id)arg0 ;
-(void)unityAdsBannerDidClick:(id)arg0 ;
-(void)unityAdsBannerDidError:(id)arg0 ;
-(id)getAdNetworkId;


@end


#endif