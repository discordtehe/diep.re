// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISNRINGERCHECKERCONTROLLER_H
#define ISNRINGERCHECKERCONTROLLER_H


#import <Foundation/Foundation.h>

@class ISNSoundSamplerRingerChecker;

@interface ISNRingerCheckerController : NSObject

@property (retain, nonatomic) ISNSoundSamplerRingerChecker *ringerChecker; // ivar: _ringerChecker
@property (readonly, getter=isInitiatedSuccessfuly) BOOL initiatedSuccessfuly;


-(void)prepareRingerChecker;
-(void)startRingerCheckerWithStatusChangedHandler:(id)arg0 ;
-(void)stopRingerChecker;
-(void)logInfo:(id)arg0 ;


@end


#endif