// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBAPPLICATIONINTERFACEORIENTATIONPROVIDER_H
#define FBAPPLICATIONINTERFACEORIENTATIONPROVIDER_H


#import <Foundation/Foundation.h>


@interface FBApplicationInterfaceOrientationProvider : NSObject

@property (copy, nonatomic) id *didChangeHandler; // ivar: _didChangeHandler


-(void)dealloc;
-(id)init;
-(void)startObservingApplicationOrientation;
-(void)statusBarOrientationDidChange:(id)arg0 ;


@end


#endif