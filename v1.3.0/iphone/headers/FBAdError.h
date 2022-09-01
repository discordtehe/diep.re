// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADERROR_H
#define FBADERROR_H


#import <Foundation/Foundation.h>


@interface FBAdError : NSObject



+(void)initialize;
+(id)defaultDescriptions;
+(id)defaultDescriptionForKey:(id)arg0 ;
+(id)getNSError:(NSInteger)arg0 ;
+(id)getNSError:(NSInteger)arg0 description:(id)arg1 ;
+(id)getNSError:(NSInteger)arg0 detail:(id)arg1 ;
+(id)getErrorFromJSON:(id)arg0 withCode:(NSInteger)arg1 description:(id)arg2 detail:(id)arg3 ;
+(id)getNSError:(NSInteger)arg0 description:(id)arg1 detail:(id)arg2 ;
+(id)getNSError:(NSInteger)arg0 domain:(id)arg1 description:(id)arg2 detail:(id)arg3 ;


@end


#endif