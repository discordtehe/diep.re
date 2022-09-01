// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLESDKVERSIONMANAGER_H
#define VUNGLESDKVERSIONMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface VungleSDKVersionManager : NSObject

@property (retain, nonatomic) NSUserDefaults *localDefaults; // ivar: _localDefaults


-(id)initWithUserDefaults:(id)arg0 ;
-(BOOL)sdkVersionStored;
-(void)storeSDKVersion:(id)arg0 ;
-(BOOL)storedSDKVersionisEqualToVersion:(id)arg0 ;


@end


#endif