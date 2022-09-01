// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADSAFARIVIEWCONTROLLER_H
#define FBADSAFARIVIEWCONTROLLER_H


#import <Foundation/Foundation.h>


@interface FBAdSafariViewController : NSObject



+(void)initialize;
+(BOOL)supportsSafariServices;
+(BOOL)supportsWebKit;
+(void)presentSafariViewControllerWithURL:(id)arg0 withRootViewController:(id)arg1 withInlineClientToken:(id)arg2 withHandlerTime:(NSUInteger)arg3 withDelegate:(id)arg4 ;
+(NSUInteger)currentTimeMs;


@end


#endif