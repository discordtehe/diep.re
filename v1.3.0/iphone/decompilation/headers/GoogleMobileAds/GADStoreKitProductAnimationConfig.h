// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADSTOREKITPRODUCTANIMATIONCONFIG_H
#define GADSTOREKITPRODUCTANIMATIONCONFIG_H


#import <Foundation/Foundation.h>

@class GADAnimationConfig;

@interface GADStoreKitProductAnimationConfig : GADAnimationConfig

@property (readonly, copy, nonatomic) NSString *productIdentifier; // ivar: _productIdentifier
@property (readonly, copy, nonatomic) NSString *dismissalNotificationRequestIdentifier; // ivar: _dismissalNotificationRequestIdentifier


-(id)init;
-(id)initWithDictionary:(id)arg0 ;


@end


#endif