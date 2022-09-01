// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef OMIDTAPJOYUIWEBVIEWJSEXECUTOR_H
#define OMIDTAPJOYUIWEBVIEWJSEXECUTOR_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol OMIDtapjoyJSExecutor;

@interface OMIDtapjoyUIWebViewJSExecutor : NSObject <OMIDtapjoyJSExecutor>

 {
    UIWebView *_webView;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) BOOL supportBackgroundThread;
@property (readonly, nonatomic) id *jsEnvironment;


-(id)initWithWebView:(id)arg0 ;
-(void)injectJavaScriptFromString:(id)arg0 ;


@end


#endif