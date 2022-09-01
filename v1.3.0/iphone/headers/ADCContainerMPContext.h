// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCCONTAINERMPCONTEXT_H
#define ADCCONTAINERMPCONTEXT_H


#import <Foundation/Foundation.h>

@class ADCAdSession;
@class ADCContainer;

@interface ADCContainerMPContext : NSObject

@property (readonly, nonatomic) ADCAdSession *session; // ivar: _session
@property (readonly, nonatomic) ADCContainer *container; // ivar: _container


-(id)initWithMessage:(id)arg0 ;
-(BOOL)isValid;


@end


#endif