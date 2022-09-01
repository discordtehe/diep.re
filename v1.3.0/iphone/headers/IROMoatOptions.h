// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef IROMOATOPTIONS_H
#define IROMOATOPTIONS_H


#import <Foundation/Foundation.h>

@protocol NSCopying;

@interface IROMoatOptions : NSObject <NSCopying>



@property BOOL locationServicesEnabled; // ivar: _locationServicesEnabled
@property BOOL IDFACollectionEnabled; // ivar: _IDFACollectionEnabled
@property BOOL debugLoggingEnabled; // ivar: _debugLoggingEnabled


-(id)init;
-(id)copyWithZone:(struct _NSZone *)arg0 ;


@end


#endif