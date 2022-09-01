// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SUPERSONICADSADVERTISER_H
#define SUPERSONICADSADVERTISER_H


#import <Foundation/Foundation.h>

@protocol NSURLConnectionDelegate;

@interface SupersonicAdsAdvertiser : NSObject <NSURLConnectionDelegate>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)reportAppStarted;
+(id)sharedInstance;


@end


#endif