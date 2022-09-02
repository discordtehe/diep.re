// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADACTIVEVIEWCONTEXT_H
#define GADACTIVEVIEWCONTEXT_H


#import <Foundation/Foundation.h>

@class GADJSContext;

@interface GADActiveViewContext : NSObject {
    GADJSContext *_context;
}




-(void)setJSContext:(id)arg0 ;
-(void)updateActiveViewWithSignals:(id)arg0 completionHandler:(id)arg1 ;
+(void)loadWithEventContext:(id)arg0 completionHandler:(id)arg1 ;


@end


#endif