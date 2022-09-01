// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADOMIDCOMMAND_H
#define GADOMIDCOMMAND_H


#import <Foundation/Foundation.h>


@interface GADOMIDCommand : NSObject



+(id)commandWithName:(id)arg0 ;
+(id)errorCommandWithType:(NSUInteger)arg0 errorMessage:(id)arg1 ;
+(id)stringWithQuotesFromString:(id)arg0 ;
+(id)escapedString:(id)arg0 ;
+(id)stringFromArguments:(char *)arg0 ;
+(id)getStringError:(NSUInteger)arg0 ;


@end


#endif