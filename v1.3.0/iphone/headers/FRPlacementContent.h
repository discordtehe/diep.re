// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FRPLACEMENTCONTENT_H
#define FRPLACEMENTCONTENT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class FRPurchaseRequest;
@class FRRewardRequest;
@protocol FiveRocksDelegate;

@interface FRPlacementContent : NSObject

@property (weak) NSObject<FiveRocksDelegate> *_delegate; // ivar: __delegate
@property (retain) NSString *placement; // ivar: _placement
@property (retain) NSDictionary *meta; // ivar: _meta
@property (retain) FRPurchaseRequest *purchaseRequest; // ivar: _purchaseRequest
@property (retain) FRRewardRequest *rewardRequest; // ivar: _rewardRequest
@property (retain) NSString *url; // ivar: _url
@property (retain) NSString *redirectURL; // ivar: _redirectURL
@property (retain) NSString *adContent; // ivar: _adContent


-(BOOL)hasContent;
-(BOOL)didExpired;
-(void)show;
-(void)dismiss;
+(NSInteger)viewOrientationWithFrame:(struct CGRect )arg0 landscapeForSquare:(BOOL)arg1 ;


@end


#endif