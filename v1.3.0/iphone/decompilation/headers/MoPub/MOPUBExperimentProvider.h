// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MOPUBEXPERIMENTPROVIDER_H
#define MOPUBEXPERIMENTPROVIDER_H


#import <Foundation/Foundation.h>


@interface MOPUBExperimentProvider : NSObject



+(void)setDisplayAgentType:(NSInteger)arg0 ;
+(void)setDisplayAgentFromAdServer:(NSInteger)arg0 ;
+(NSInteger)displayAgentType;
+(void)setDisplayAgentOverriddenByClientFlag:(BOOL)arg0 ;


@end


#endif