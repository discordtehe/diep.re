// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISADAPTERLOGGERPROXY_H
#define ISADAPTERLOGGERPROXY_H


#import <Foundation/Foundation.h>

@protocol ISAdapterLoggerProtocol;

@interface ISAdapterLoggerProxy : NSObject <ISAdapterLoggerProtocol>





-(void)log:(id)arg0 ;
-(void)logFromError:(id)arg0 ;
-(void)logFromException:(id)arg0 ;


@end


#endif