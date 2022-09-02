// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVCLIENTPROPERTIES_H
#define USRVCLIENTPROPERTIES_H


#import <Foundation/Foundation.h>


@interface USRVClientProperties : NSObject



+(void)setGameId:(id)arg0 ;
+(id)getGameId;
+(id)getSupportedOrientationsPlist;
+(int)getSupportedOrientations;
+(id)getAppName;
+(id)getAppVersion;
+(BOOL)isAppDebuggable;
+(void)setCurrentViewController:(id)arg0 ;
+(id)getCurrentViewController;
+(void)setBannerDefaultPosition:(NSInteger)arg0 ;
+(NSInteger)getbannerDefaultPosition;


@end


#endif