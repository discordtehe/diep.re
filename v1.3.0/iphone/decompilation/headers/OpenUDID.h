// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef OPENUDID_H
#define OPENUDID_H


#import <Foundation/Foundation.h>


@interface OpenUDID : NSObject



+(void)_setDict:(id)arg0 forPasteboard:(id)arg1 ;
+(id)_getDictFromPasteboard:(id)arg0 ;
+(id)_generateFreshOpenUDID;
+(id)value;
+(id)valueWithError:(*id)arg0 ;
+(void)setOptOut:(BOOL)arg0 ;


@end


#endif