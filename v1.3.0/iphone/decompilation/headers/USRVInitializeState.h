// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVINITIALIZESTATE_H
#define USRVINITIALIZESTATE_H


#import <Foundation/Foundation.h>

@class USRVConfiguration;

@interface USRVInitializeState : NSOperation

@property (nonatomic) USRVConfiguration *configuration; // ivar: _configuration


-(void)main;
-(id)execute;
-(id)initWithConfiguration:(id)arg0 ;


@end


#endif