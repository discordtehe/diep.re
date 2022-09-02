// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONY_AVIDWKWEBVIEWHOLDER_H
#define ADCOLONY_AVIDWKWEBVIEWHOLDER_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol AdColony_AvidWebViewHolder;

@interface AdColony_AvidWKWebViewHolder : NSObject <AdColony_AvidWebViewHolder>



@property (weak, nonatomic) UIView *webView; // ivar: _webView
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)injectJavascript:(id)arg0 ;


@end


#endif