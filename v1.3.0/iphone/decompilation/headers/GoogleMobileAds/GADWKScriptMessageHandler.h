// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADWKSCRIPTMESSAGEHANDLER_H
#define GADWKSCRIPTMESSAGEHANDLER_H


#import <Foundation/Foundation.h>

@class GADWebKitWebViewController;
@protocol WKScriptMessageHandler;

@interface GADWKScriptMessageHandler : NSObject <WKScriptMessageHandler>

 {
    GADWebKitWebViewController *_webViewController;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithWebViewController:(id)arg0 ;
-(void)userContentController:(id)arg0 didReceiveScriptMessage:(id)arg1 ;


@end


#endif