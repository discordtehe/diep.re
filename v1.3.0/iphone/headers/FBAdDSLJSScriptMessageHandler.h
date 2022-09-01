// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADDSLJSSCRIPTMESSAGEHANDLER_H
#define FBADDSLJSSCRIPTMESSAGEHANDLER_H


#import <Foundation/Foundation.h>

@protocol WKScriptMessageHandler;
@protocol FBAdDSLJSScriptMessageHandlerDelegate;

@interface FBAdDSLJSScriptMessageHandler : NSObject <WKScriptMessageHandler>



@property (weak, nonatomic) NSObject<FBAdDSLJSScriptMessageHandlerDelegate> *delegate; // ivar: _delegate
@property (readonly, copy, nonatomic) NSString *authKey; // ivar: _authKey
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithAuthKey:(id)arg0 delegate:(id)arg1 ;
-(void)userContentController:(id)arg0 didReceiveScriptMessage:(id)arg1 ;


@end


#endif