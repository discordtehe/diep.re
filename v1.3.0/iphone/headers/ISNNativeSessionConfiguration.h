// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISNNATIVESESSIONCONFIGURATION_H
#define ISNNATIVESESSIONCONFIGURATION_H


#import <Foundation/Foundation.h>


@interface ISNNativeSessionConfiguration : NSObject

@property (nonatomic) BOOL supportViewControllerFromAdapter; // ivar: _supportViewControllerFromAdapter
@property (nonatomic) BOOL allowOrientationFromAppDelegate; // ivar: _allowOrientationFromAppDelegate


-(id)init;
+(id)defaultConfiguration;


@end


#endif