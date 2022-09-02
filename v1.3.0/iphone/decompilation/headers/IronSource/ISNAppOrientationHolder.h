// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISNAPPORIENTATIONHOLDER_H
#define ISNAPPORIENTATIONHOLDER_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class ISNNativeSessionConfiguration;

@interface ISNAppOrientationHolder : NSObject

@property (nonatomic) int externalAppOrientation; // ivar: _externalAppOrientation
@property (weak, nonatomic) UIViewController *presentingViewController; // ivar: _presentingViewController
@property (retain, nonatomic) ISNNativeSessionConfiguration *sessionConfiguration; // ivar: _sessionConfiguration
@property (readonly) int appOrientation; // ivar: _appOrientation


-(id)init;
-(void)updateAppOrientation;
+(id)sharedInstance;


@end


#endif