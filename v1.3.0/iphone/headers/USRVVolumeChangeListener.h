// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USRVVOLUMECHANGELISTENER_H
#define USRVVOLUMECHANGELISTENER_H


#import <Foundation/Foundation.h>

@protocol USRVVolumeChangeDelegate;

@interface USRVVolumeChangeListener : NSObject <USRVVolumeChangeDelegate>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(void)onVolumeChanged:(float)arg0 ;


@end


#endif