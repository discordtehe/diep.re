// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADDEVICEORIENTATIONSIGNALS_H
#define GADDEVICEORIENTATIONSIGNALS_H


#import <Foundation/Foundation.h>

@protocol GADSignal;

@interface GADDeviceOrientationSignals : NSObject <GADSignal>

 {
    NSString *_supportedInterfaceOrientationsForKeyWindow;
    NSString *_supportedInterfaceOrientationsForMainWindow;
    CGRect _standardizedMainScreenPortraitBounds;
}


@property (readonly, nonatomic) BOOL orientationLandscape; // ivar: _orientationLandscape
@property (readonly, nonatomic) CGRect standardizedOrientedScreenBounds;
@property (readonly, nonatomic) CGSize standardizedOrientedKeyWindowSize; // ivar: _standardizedOrientedKeyWindowSize
@property (readonly, nonatomic) CGRect standardizedOrientedApplicationFrame; // ivar: _standardizedOrientedApplicationFrame
@property (readonly, nonatomic) CGSize standardizedPortraitKeyWindowSize;
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)addSignalEntriesToMutableDictionary:(id)arg0 ;
+(id)signalSource;


@end


#endif