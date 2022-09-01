// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADGESTUREIDUTIL_H
#define GADGESTUREIDUTIL_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface GADGestureIdUtil : NSObject

@property (retain, nonatomic) NSUserDefaults *userDefaults; // ivar: userDefaults_


-(id)init;
-(void)dealloc;
-(id)osVersion;
-(id)deviceIdentifier;
-(BOOL)deviceOptedOut;
+(id)sharedInstance;
+(void)getOSMajor:(*int)arg0 minor:(*int)arg1 bugFix:(*int)arg2 ;
+(BOOL)isOSAtLeastMajor:(int)arg0 minor:(int)arg1 bug:(int)arg2 ;


@end


#endif