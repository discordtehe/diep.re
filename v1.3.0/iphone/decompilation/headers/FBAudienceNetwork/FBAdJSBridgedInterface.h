// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADJSBRIDGEDINTERFACE_H
#define FBADJSBRIDGEDINTERFACE_H


#import <Foundation/Foundation.h>

@protocol FBAdJSBridgedInterfaceProtocol;
@protocol FBAdJSBridgedInterfaceDelegate;

@interface FBAdJSBridgedInterface : NSObject <FBAdJSBridgedInterfaceProtocol>



@property (weak, nonatomic) NSObject<FBAdJSBridgedInterfaceDelegate> *delegate; // ivar: _delegate


-(void)onCTAClick;


@end


#endif