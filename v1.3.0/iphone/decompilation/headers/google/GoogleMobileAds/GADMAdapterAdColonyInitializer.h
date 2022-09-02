// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMADAPTERADCOLONYINITIALIZER_H
#define GADMADAPTERADCOLONYINITIALIZER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface GADMAdapterAdColonyInitializer : NSObject

@property (retain) NSSet *zones; // ivar: _zones
@property int adColonyAdapterInitState; // ivar: _adColonyAdapterInitState
@property (retain) NSArray *callbacks; // ivar: _callbacks


-(id)init;
-(void)initializeAdColonyWithAppId:(id)arg0 zones:(id)arg1 options:(id)arg2 callback:(id)arg3 ;
+(id)sharedInstance;


@end


#endif