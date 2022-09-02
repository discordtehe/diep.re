// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISORIENTATIONUTILLIS_H
#define ISORIENTATIONUTILLIS_H


#import <Foundation/Foundation.h>


@interface ISOrientationUtillis : NSObject



+(int)convertControllerStringOrientationToISOrientation:(id)arg0 ;
+(int)orientationNumberToISOrientation:(NSInteger)arg0 ;
+(int)orientationNameToISOrientation:(id)arg0 ;
+(int)plistSupportedOrientationMask;
+(int)UIInterfaceOrientation2ISOrientation:(NSInteger)arg0 ;
+(NSInteger)ISOrientation2UIInterfaceOrientation:(int)arg0 ;
+(NSInteger)orientationLockedStateFromOrientation:(int)arg0 ;
+(struct CGRect )orientationDependantFullScreenRect;
+(struct CGRect )orientationDependantFullScreenRect:(BOOL)arg0 ;
+(id)lockedStateAsControllerString:(NSInteger)arg0 ;
+(BOOL)orientationsHasSharedOrientation:(int)arg0 andOrientation:(int)arg1 ;
+(int)sharedOrientationsBetweenOrientation:(int)arg0 andOrientation:(int)arg1 ;


@end


#endif