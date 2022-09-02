// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADJSCOREPINGER_H
#define GADJSCOREPINGER_H


#import <Foundation/Foundation.h>

@class GADEventContext;
@protocol GADJSCorePingerProtocol;

@interface GADJSCorePinger : NSObject <GADJSCorePingerProtocol>

 {
    GADEventContext *_eventContext;
}




-(id)initWithEventContext:(id)arg0 ;
-(id)init;
-(void)pingURL:(id)arg0 ;


@end


#endif