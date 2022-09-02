// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef UMONNATIVEPROMOADAPTER_H
#define UMONNATIVEPROMOADAPTER_H


#import <Foundation/Foundation.h>

@class UMONPromoAdPlacementContent;

@interface UMONNativePromoAdapter : NSObject

@property (retain, nonatomic) UMONPromoAdPlacementContent *promo; // ivar: _promo


-(id)initWithPromo:(id)arg0 ;
-(void)promoDidShow:(NSInteger)arg0 ;
-(id)metadata;


@end


#endif