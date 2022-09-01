// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPVASTMANAGER_H
#define MPVASTMANAGER_H


#import <Foundation/Foundation.h>


@interface MPVASTManager : NSObject



+(void)fetchVASTWithData:(id)arg0 completion:(id)arg1 ;
+(void)parseVASTResponseFromData:(id)arg0 depth:(NSInteger)arg1 completion:(id)arg2 ;
+(id)wrappersForVASTResponse:(id)arg0 ;
+(BOOL)VASTResponseContainsAtLeastOneAd:(id)arg0 ;


@end


#endif