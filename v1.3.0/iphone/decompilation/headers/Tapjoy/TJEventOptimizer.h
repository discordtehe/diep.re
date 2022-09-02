// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TJEVENTOPTIMIZER_H
#define TJEVENTOPTIMIZER_H


#import <Foundation/Foundation.h>

@class TJCUIWebPageView;

@interface TJEventOptimizer : NSObject

@property (retain, nonatomic) TJCUIWebPageView *webView; // ivar: _webView


-(id)init;
-(void)setupWebView;
-(void)preloadURL;
+(void)startup;
+(id)optimizer;
+(void)retryStartup;


@end


#endif